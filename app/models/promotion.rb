class Promotion < ActiveRecord::Base
  has_many :performances
  has_many :features, :through => :performances
  has_many :occurrences, :through => :features
  has_many :events, :through => :occurrences
  
  has_many :locations, :through => :features
  has_many :venues, :through => :locations
end
