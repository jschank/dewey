# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Dewey::Application.initialize!

Date::DATE_FORMATS.merge!(
  :long => '%A, %B %-d, %Y'
)
Time::DATE_FORMATS[:reduced] = "%-I:%M %p"  
Time::DATE_FORMATS[:hour_only] = "%-I %p"  
