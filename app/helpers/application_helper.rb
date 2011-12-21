module ApplicationHelper

  def logo_for(event)
    event.features[0].venue.logo
  end

  def event_format(datetime)
    (datetime.min > 0) ? "%l:%M %p" : "%l %p"
  end

  def event_times(features)
    start_time = (features[0].event_start) ? features[0].event_start.strftime(event_format(features[0].event_start)) : "?"
    end_time = (features[0].event_end) ? features[0].event_end.strftime(event_format(features[0].event_end)) : "?"
    "#{start_time} -#{end_time}".downcase
  end
  
  def date_and_times(date, features)
    date.strftime("%A, %B %d, %Y at #{event_times(features)}")
  end

  def date_and_times(date, features = nil)
    str = ""
    str += date.strftime("%A, %B %d, %Y")
    str += " at #{event_times(features)}" if features
  end

end
