class Event < ActiveRecord::Base
  has_many :occurrences
  has_many :performances, :through => :occurrences
  has_many :acts, :through => :performances
  
  has_many :locations, :through => :performances
  has_many :venues, :through => :locations
  
end
