class Act < ActiveRecord::Base
  has_many :performances
  has_many :occurences, :through => :performances
  has_many :events, :through => :occurrences
  
  has_many :locations, :through => :performances
  has_many :venues, :through => :locations
end
