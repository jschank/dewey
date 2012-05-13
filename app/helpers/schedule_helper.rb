module ScheduleHelper

  def display_time(datetime)    
    datetime.to_formatted_s(:long) if datetime.present?
  end

end
