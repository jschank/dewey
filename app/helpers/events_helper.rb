module EventsHelper

  def event_format(datetime)
    (datetime.min > 0) ? "%l:%M %p" : "%l %p"
  end

  def event_times(event)
    start_time = (event.event_start) ? event.event_start.strftime(event_format(event.event_start)) : "?"
    end_time = (event.event_end) ? event.event_end.strftime(event_format(event.event_end)) : "?"
    "#{start_time} -#{end_time}".downcase
  end

  def is_empty(string)
    string == nil || string.strip.empty?
  end

  # should be in the model as something like display_name
  def event_name(event)
    return event.features[0].promotion.name if is_empty(event.name)
    event.name
  end

  def features(event)
    return [] if is_empty(event.name) && event.features.count < 2
    event.features
  end


end
