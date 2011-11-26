module EventsHelper
  
  def event_format(datetime)
    (datetime.min > 0) ? "%l:%M %p" : "%l %p"    
  end
  
  def event_times(event)
    start_time = (event.event_start) ? event.event_start.strftime(event_format(event.event_start)) : "?"
    end_time = (event.event_end) ? event.event_end.strftime(event_format(event.event_end)) : "?"
    "#{start_time} -#{end_time}".downcase
  end
  
end
