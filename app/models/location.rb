class Location < ActiveRecord::Base
  belongs_to :venue
  
  def display_name
    name || venue.name || "<Unknown"
  end
end
