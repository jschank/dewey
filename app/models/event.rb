class Event < ActiveRecord::Base
  has_many :occurrences
  has_many :performances, :through => :occurrences
  has_many :acts, :through => :performances
  
  has_many :locations, :through => :performances
  has_many :venues, :through => :locations

  has_many :links, :as => :linkable
  has_many :weblocations, :through => :links
  
  default_scope :order => 'name ASC'
end
