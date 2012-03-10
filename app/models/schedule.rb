class Schedule < ActiveRecord::Base

  belongs_to :schedulable, :polymorphic => true

  # belongs_to :event 

  # belongs_to :location
  # has_many :child_schedules, :class_name => "Schedule", :foreign_key => "parent_id"
  # belongs_to :parent, :class_name => "Schedule"
  
  
  def self.future_events(date)
      where("start >= ? AND parent_id is null", date)
  end

end
