class Location < ActiveRecord::Base
  belongs_to :venue
  has_many :performances
  has_many :acts, :through => :performances

  has_many :occurrences, :through => :performances
  has_many :events, :through => :occurrences
  
  def display_name
    name || venue.name || "<Unknown"
  end
end
