module EventsHelper

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
