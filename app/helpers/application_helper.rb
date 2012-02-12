require 'pathname'

module ApplicationHelper

  ARTICLES = %W[A AN THE]

  def admin_area(&block)
    content_for :admin do      
      content_tag(:div, :class => 'admin', &block)
    end
  end
  
  def specific_area(&block)
    content_for :specific do      
      content_tag(:div, :class => 'boxSpecific', &block)
    end
  end

  def index_area(&block)
    content_for :index do      
      content_tag(:div, :class => 'boxIndex', &block)
    end
  end

  def in_progress_area(&block)
    content_for :in_progress do      
      content_tag(:div, :class => 'boxIndex', &block)
    end
  end

  def upcoming_area(&block)
    content_for :upcoming do      
      content_tag(:div, :class => 'boxIndex', &block)
    end
  end
  
  def make_link(link)
    logo = logo_for(link.weblocation)
    link_to image_tag(logo, :class => "webAnchor", :alt => [link.weblocation.tagline, link.weblocation.name].join(' ')), link.url, :target => "_blank"
  end

  def logo_for(thing)
    name = thing.try(:name)
    global_default_image = "rails.png"
    return image_path(global_default_image) unless name
    
    class_name = thing.class.name.parameterize
    logo_image =  "#{class_name}/#{name.parameterize}-logo.png"
    return image_path(logo_image) if Dewey::Application.assets.find_asset(logo_image)
    
    default_for_class_image = "#{class_name}/#{class_name}-logo.png"
    return image_path(default_for_class_image) if Dewey::Application.assets.find_asset(default_for_class_image)
    
    return image_path(global_default_image)
  end
  
  def sortable_name(name)
    canonical_name = name.upcase
    first, *rest = canonical_name.split
    return canonical_name unless ARTICLES.include?(first)
    rest.join(' ')
  end  

  def time_format(datetime)
    (datetime.min > 0) ? datetime.to_s(:reduced) : datetime.to_s(:hour_only)
  end

  def occurrence_times(occurrence)
    return "" unless occurrence
    start_time = (occurrence.event_start) ? time_format(occurrence.event_start).chop : "?"
    end_time   = (occurrence.event_end)   ? time_format(occurrence.event_end).chop : "?"
    "#{start_time} - #{end_time}".downcase
  end
  
  def performance_times(performance)
    return "" unless performance
    start_time = (performance.performance_start) ? time_format(performance.performance_start).chop : "?"
    # end_time   = (performance.performance_end)   ? time_format(performance.performance_end) : "?"
    # "#{start_time.chop} - #{end_time.chop}".downcase
    "#{start_time}".downcase
  end
  
  def date_and_times(date, occurrence = nil)
    str = ""
    str += date.strftime("%a, %B %-d")
    str += " at #{occurrence_times(occurrence)}" if occurrence
    str
  end

end
