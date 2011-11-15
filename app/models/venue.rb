class Venue < ActiveRecord::Base
  has_many :locations
  has_many :features, :through => :locations, :source => :venue
end
