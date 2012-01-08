class Venue < ActiveRecord::Base
  has_many :locations
  has_many :performances, :through => :locations
  
  has_many :acts, :through => :performances

  has_many :occurrences, :through => :performances, :uniq => true
  has_many :events, :through => :occurrences

  has_many :links, :as => :linkable
  has_many :weblocations, :through => :links

  default_scope :order => 'name ASC'
end
