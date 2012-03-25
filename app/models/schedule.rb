class Schedule < ActiveRecord::Base

  belongs_to :schedulable, :polymorphic => true
  belongs_to :location

  has_many :children, :class_name => "Schedule", :foreign_key => "parent_id"
  belongs_to :parent, :class_name => "Schedule", :foreign_key => "parent_id"
  
  
  def self.future_events(date)
      where("start >= ? AND parent_id is null", date)
  end

  def self.future_events_at(date, venue)
      where("start >= ? AND parent_id is null", date)
        .scoped( :conditions => { :location_id => venue.locations} )
        .order( :start )
      
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
