class ApplicationController < ActionController::Base
  helper_method :current_time
  helper_method :page_class
  helper_method :admin_page_class
  protect_from_forgery

  def current_time
    Rails.env == 'development' ? DateTime.civil(2012, 04, 13, 21, 30, 0, "-4") : DateTime.now
  end
  
  def page_class(page)
    str = "#{page.to_s}_#{params[:controller] == page ? 'on' : 'off'}"
  end

  def admin_page_class(page)
    str = "#{page.to_s}_#{params[:controller] == "admin/"+page ? 'on' : 'off'}"
  end

end
