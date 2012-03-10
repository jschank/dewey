class Act < ActiveRecord::Base  
  has_many :links, :as => :linkable
  has_many :weblocations, :through => :links
  
  has_many :performances, :as => :schedulable
  has_many :locations, :through => :performances
  has_many :venues, :through => :locations  

  default_scope :order => 'name ASC'
  
end
