module FeaturesHelper

  def venue_logo(feature)
     asset_path (feature.venue.logo || "")
  end
  
  def event_format(datetime)
    (datetime.min > 0) ? "%l:%M %p" : "%l %p"
  end

  def event_times(features)
    start_time = (features[0].event_start) ? features[0].event_start.strftime(event_format(features[0].event_start)) : "?"
    end_time = (features[0].event_end) ? features[0].event_end.strftime(event_format(features[0].event_end)) : "?"
    "#{start_time} -#{end_time}".downcase
  end

  def is_empty(string)
    string == nil || string.strip.empty?
  end

  def event_name(event)
    return event.features[0].promotion.name if is_empty(event.name)
    event.name
  end

  def features(event)
    return [] if is_empty(event.name) && event.features.count < 2
    event.features
  end

end
