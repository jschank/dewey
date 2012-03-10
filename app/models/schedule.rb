class Schedule < ActiveRecord::Base

  belongs_to :schedulable, :polymorphic => true
  belongs_to :location
  belongs_to :parent, :class_name => "Schedule"
  has_many :children, :class_name => "Schedule", :foreign_key => "parent_id"
  
  
  def self.future_events(date)
      where("start >= ? AND parent_id is null", date)
  end
  
  def self.children_that_are_not_same_as(parent)
    parent.children.select{ |c| c.schedulable_id != parent.schedulable_id }
  end
  
  def self.children_that_are_same_as(parent)
    parent.children.select{ |c| c.schedulable_id == parent.schedulable_id && c.schedulable_type == parent.schedulable_type }
  end
  
end
