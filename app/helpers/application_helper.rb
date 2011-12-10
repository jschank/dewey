module ApplicationHelper

  def logo_for(event)
    event.features[0].venue.logo
  end

end
