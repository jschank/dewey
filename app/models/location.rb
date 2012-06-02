class Location < ActiveRecord::Base
  belongs_to :venue 
  # belongs_to :schedule 
  
  def display_name
    name.to_s.strip == APP_CONFIG['special_location'] ? "" : name.to_s.strip
  end
  
  def form_picker_name
    picker_name = venue.name
    picker_name = picker_name + " - " + name if name
    picker_name
  end
  
end
