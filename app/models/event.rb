class Event < ActiveRecord::Base
  has_many :links, :as => :linkable
  has_many :weblocations, :through => :links

  has_many :schedules, :as => :schedulable  
  
  default_scope :order => 'name ASC'
end
