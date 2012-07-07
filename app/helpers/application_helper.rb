require 'pathname'

module ApplicationHelper

  ARTICLES = %W[A AN THE]

  def admin_area(&block)
    if user_signed_in?
      content_for :admin do
        content_tag(:div, :class => 'admin', &block)
      end
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
    link_to logo_image(link.weblocation, :class => "webAnchor"), link.url, :target => "_blank"
  end
	  
  def logo_image(thing, options={})
    logo_path = (thing.logo_url) ? thing.logo_url : image_path("default-#{thing.class.name.underscore}-logo.png")
    image_tag(logo_path, options)    
  end
    
  def sortable_name(name)
    canonical_name = name.upcase
    first, *rest = canonical_name.split
    return canonical_name unless ARTICLES.include?(first)
    rest.join(' ')
  end 
  
  def histogram(thing) 
    thing.sort { |a, b| sortable_name(a.name) <=> sortable_name(b.name) }.group_by{ |a| sortable_name(a.name).chars.first }
  end

  def time_format(datetime)
    (datetime.min > 0) ? datetime.to_s(:reduced) : datetime.to_s(:hour_only)
  end

  def date_and_times(date)
    date.strftime("%a, %B %-d")
  end

  def time_list(schedulables)
    return "" unless schedulables
    times = schedulables.map do |schedulable|
      schedulable_times = []
      schedulable_times << time_format(schedulable.start).chop if schedulable.start
      schedulable_times << time_format(schedulable.end).chop if schedulable.end
      schedulable_times.join(" - ").downcase
    end.join(", ")
    times.prepend(", ") if times.present?
  end

  def times(schedulable)
    return "" unless schedulable
    times = []
    times << time_format(schedulable.start).chop if schedulable.start
    times << time_format(schedulable.end).chop if schedulable.end
    times.join(" - ").downcase
  end
  
  def performance_times(performance)
    return "" unless performance
    start_time = (performance.performance_start) ? time_format(performance.performance_start).chop : ""
    # end_time   = (performance.performance_end)   ? time_format(performance.performance_end) : "?"
    # "#{start_time.chop} - #{end_time.chop}".downcase
    "#{start_time}".downcase
  end
  
  def link_to_add_fields(name, f, association)
    new_object = f.object.class.reflect_on_association(association).klass.new
    fields = f.fields_for(association, new_object, :child_index => "new_#{association}") do |builder|
      render(association.to_s.singularize + "_fields", :f => builder)
    end
    link_to_function(name, "add_fields(this, \"#{association}\", \"#{escape_javascript(fields)}\")")
  end
  
  
end
