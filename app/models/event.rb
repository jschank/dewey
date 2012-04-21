class Event < ActiveRecord::Base
  has_many :links, :as => :linkable
  has_many :weblocations, :through => :links

  has_many :schedules, :as => :schedulable  
  # has_many :performances, :as => :schedulable
  # has_many :acts, :through => :performances, :source => :act
  
  validates :name, :presence => true
  
  default_scope :order => 'name ASC'

  def self.upcoming(date, event)
    items = Schedule.future_events_of(date, event)
    items.map{ |i| i.get_ultimate_parent }.uniq
  end

end
