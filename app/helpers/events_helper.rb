module EventsHelper

  def venue_logo(occurrence)
     asset_path (occurrence.locations[0].venue.logo || "")
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
