class Location < ActiveRecord::Base
  belongs_to :venue 
  # belongs_to :schedule 
  
  def display_name
    name || venue.name || "<Unknown"
  end
end
