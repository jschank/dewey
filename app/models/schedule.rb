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
  
  scope :all_parents, where(:parent_id => nil)
  
  def self.since_date
    Rails.env == 'development' ? DateTime.civil(2011, 01, 01) : DateTime.now
  end
  
  def self.in_progress(date = since_date)
    all_parents.where("(schedules.start <= ? AND schedules.end is not null AND schedules.end > ?) OR (schedules.end is null AND schedules.start < ? AND schedules.start > ?)", date, date, date, date - 3.hours)
  end
  
  def self.upcoming(date = since_date)
    all_parents.where("schedules.start > ?", date)
  end  

  def self.upcoming_events_at(date = since_date, venue)
      self.upcoming(date).scoped( :conditions => { :location_id => venue.locations} ).order( :start )      
  end

  def self.upcoming_events_of(date = since_date, schedulable)
      self.upcoming(date).scoped( :conditions => { :schedulable_id => schedulable.id, :schedulable_type => schedulable.class.name } ).order( :start ).reject{ |i| i == schedulable }
  end
  
  def self.future_events(date = since_date)
      where("schedules.end >= ? AND parent_id is null", date)
  end

  def self.future_events_at(date = since_date, venue)
      where("schedules.end >= ? AND parent_id is null", date).scoped( :conditions => { :location_id => venue.locations} ).order( :start )      
  end
  
  # maybe this should become a static method on the Act instead of on the schedule.
  def self.future_events_of(date = since_date, schedulable)
      where("schedules.end >= ?", date).scoped( :conditions => { :schedulable_id => schedulable.id, :schedulable_type => schedulable.class.name } ).order( :start ).reject{ |i| i == schedulable }
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
