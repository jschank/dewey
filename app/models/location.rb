class Location < ActiveRecord::Base
  belongs_to :venue 
  # belongs_to :schedule 
  
  def display_name
    str = name.to_s.strip
    return "" if str.casecmp("all") == 0
    str
  end
  
  def form_picker_name
    picker_name = venue.name
    picker_name = picker_name + " - " + name if name
    picker_name
  end
  
end

# APP_CONFIG['special_location']