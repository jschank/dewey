class Event < ActiveRecord::Base
  has_many :links, :as => :linkable
  has_many :weblocations, :through => :links

  has_many :schedules, :as => :schedulable  
  # has_many :performances, :as => :schedulable
  # has_many :acts, :through => :performances, :source => :act
  
  default_scope :order => 'name ASC'
end
