class Venue < ActiveRecord::Base
  has_many :locations
  has_many :features, :through => :locations, :source => :venue
  # has_many :performances, :through => :features
  # has_many :promotions, :through => :performances
  # has_many :occurrences, :through => :features
  # has_many :events, :through => :occurrences
end
