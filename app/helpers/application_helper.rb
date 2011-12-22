module ApplicationHelper

  def logo_for(event)
    event.features[0].venue.logo
  end

  def time_format(datetime)
    (datetime.min > 0) ? "%l:%M %p" : "%l %p"
  end

  def occurrence_times(occurrence)
    start_time = (occurrence.event_start) ? occurrence.event_start.strftime(time_format(occurrence.event_start)) : "?"
    end_time   = (occurrence.event_end)   ? occurrence.event_end.strftime(time_format(occurrence.event_end)) : "?"
    "#{start_time} -#{end_time}".downcase
  end
  
  def date_and_times(date, occurrence = nil)
    str = ""
    str += date.strftime("%A, %B %d, %Y")
    str += " at #{occurrence_times(occurrence)}" if occurrence
    str
  end

end
