class Act < ActiveRecord::Base  
  has_many :locations, :through => :performances
  has_many :venues, :through => :locations
  
  has_many :links, :as => :linkable
  has_many :weblocations, :through => :links
  
  has_many :schedules, :as => :schedulable

  default_scope :order => 'name ASC'
  
end
