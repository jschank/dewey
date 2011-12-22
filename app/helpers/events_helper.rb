module EventsHelper

  def logo_for(event, occurrence)
    logo = occurrence.try(:locations).try(:at, 0).try(:venue).try(:logo) || event.try(:logo) || ""
    asset_path (logo)     
  end  

  def is_empty(string)
    string == nil || string.strip.empty?
  end

end
