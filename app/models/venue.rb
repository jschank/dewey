class Venue < ActiveRecord::Base
  has_many :locations
  has_many :performances, :through => :locations
  
  has_many :acts, :through => :performances

  has_many :occurrences, :through => :performances
  has_many :events, :through => :occurrences
end
