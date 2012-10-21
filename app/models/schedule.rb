class Schedule < ActiveRecord::Base

  validates_presence_of :order

  belongs_to :schedulable, :polymorphic => true
  belongs_to :location

  has_many :children, :class_name => "Schedule", :foreign_key => "parent_id"
  belongs_to :parent, :class_name => "Schedule", :foreign_key => "parent_id"
  
  has_many :links, :as => :linkable, :dependent => :destroy
  has_many :weblocations, :through => :links
  accepts_nested_attributes_for :links, :reject_if => lambda { |a| a[:url].blank? }, :allow_destroy => true
  
  has_many :details, :dependent => :destroy
  accepts_nested_attributes_for :details, :allow_destroy => true
  
  belongs_to :festival
  
  scope :all_parents, where(:parent_id => nil)
  scope :in_progress, lambda {|date| where("(schedules.start <= ? AND schedules.end is not null AND schedules.end > ?) OR (schedules.end is null AND schedules.start < ? AND schedules.start > ?)", date, date, date, date - 3.hours) }
  scope :upcoming, lambda { |date| order(:start).where("start > ?", date) }
  scope :at_venue, lambda { |venue| scoped( :conditions => { :location_id => venue.locations} ).order( :start )  }
  scope :at_festival, lambda { |festival| scoped( :conditions => { :festival_id => festival} ).order( :start )  }
  scope :of_schedulable, lambda { |schedulable| scoped( :conditions => { :schedulable_id => schedulable.id, :schedulable_type => schedulable.class.name } ).order( :start ).reject{ |i| i == schedulable } }
    
  def is_parent?
    parent_id == nil
  end  
  
  def get_ultimate_parent
    node = self
    while node.parent_id != nil do
      node = Schedule.find(node.parent_id)
    end
    node
  end
  
  def self.children_that_are_not_same_as(parent)
    parent.children.select{ |c| c.schedulable_id != parent.schedulable_id || c.schedulable_type != parent.schedulable_type }
  end
  
  def self.children_that_are_same_as(parent)
    parent.children.select{ |c| c.schedulable_id == parent.schedulable_id && c.schedulable_type == parent.schedulable_type }
  end
      
  def agenda
    different_children = Schedule.children_that_are_not_same_as(self)
    different_children.sort_by{ |c| [c.order, (c.start.present?) ? c.start : c.parent.start] }.group_by{ |c| [c.schedulable_id, c.schedulable_type] }
  end
  
  def self.retrieve(schedulable_id, schedulable_type)
    schedulable_type.constantize.send("find", schedulable_id)
  end

  def acts
    children.map(&:schedulable).uniq(&:name).sort_by(&:name)
  end
  
end
