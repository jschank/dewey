class ApplicationController < ActionController::Base
  helper_method :current_time
  protect_from_forgery

  def current_time
    Rails.env == 'development' ? DateTime.civil(2012, 04, 13, 21, 30, 0, "-4") : DateTime.now
  end

end
