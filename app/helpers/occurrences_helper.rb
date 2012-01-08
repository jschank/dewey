require 'pathname'

module OccurrencesHelper

  def display_cover_charge(occurrence)
    if (occurrence.cover_charge)
      content_tag :p, "$%2.2f" % occurrence.cover_charge, :class => "cover"
    end
  end

end
