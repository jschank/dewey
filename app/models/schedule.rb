class Schedule < ActiveRecord::Base

  belongs_to :schedulable, :polymorphic => true
  belongs_to :location

  has_many :children, :class_name => "Schedule", :foreign_key => "parent_id"
  belongs_to :parent, :class_name => "Schedule", :foreign_key => "parent_id"
  
  has_many :links, :as => :linkable, :dependent => :destroy
  has_many :weblocations, :through => :links
  accepts_nested_attributes_for :links, :reject_if => lambda { |a| a[:url].blank? }, :allow_destroy => true
  
  def self.future_events(date)
      where("schedules.end >= ? AND parent_id is null", date)
  end

  def self.future_events_at(date, venue)
      where("schedules.end >= ? AND parent_id is null", date).scoped( :conditions => { :location_id => venue.locations} ).order( :start )      
  end
  
  # maybe this should become a static method on the Act instead of on the schedule.
  def self.future_events_of(date, schedulable)
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
    different_children.sort{ |a, b| a.start <=> b.start }.group_by{ |c| [c.schedulable_id, c.schedulable_type] }
    
    
    # i want an array of arrays, where the sub arrays are schedule items, sorted by start time. 
    # a = [5, "Act"]
    # a[1].constantize.send("find", a[0]) => returns Act.find(5)   
  end
  
  def self.retrieve(schedulable_id, schedulable_type)
    schedulable_type.constantize.send("find", schedulable_id)
  end
  
end
