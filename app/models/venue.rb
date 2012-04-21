class Venue < ActiveRecord::Base
  has_many :links, :as => :linkable
  has_many :weblocations, :through => :links

  has_many :schedules, :as => :schedulable
  
  has_many :locations

  default_scope :order => 'name ASC'

  validates :name, :presence => true
end
