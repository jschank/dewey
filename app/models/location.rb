class Location < ActiveRecord::Base
  belongs_to :venue
  # has_many :features
  # has_many :performances, :through => :features
  # has_many :promotions, :through => :performances
  # has_many :occurrences, :through => :features
  # has_many :events, :through => :occurrences
  
  def display_name
    name || venue.name || "<Unknown"
  end
end
