require 'pathname'

module ApplicationHelper

  ARTICLES = %W[A AN THE]
    
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
  
  def histogram_char_translate(char)
    return "#" if /\d/.match(char)
    char
  end
  
  def histogram(thing) 
    thing.sort_by{|t| sortable_name(t.name)}.group_by{ |t| histogram_char_translate(sortable_name(t.name).chars.first) }
  end

  def time_format(datetime)
    (datetime.min > 0) ? datetime.to_s(:reduced) : datetime.to_s(:hour_only)
  end

  def date_and_times(date)
    date.strftime("%a, %B %-d")
  end
  
  def render_list(list, klass, title, item_partial)
    if list.present? then render :partial => 'shared/schedule_list', :locals => {:list => list, :options => {:class => klass}, :title => title, :item_partial => item_partial} end
  end
  
  def organize_list(list, params)
    # list is a unique list of parent schedule items
    organize_by = params[:organize] || "bydate"
    case organize_by
    when "byact"
      organized_list = list.group_by{|i| i.schedulable.name[0]}
      organized_list.each { |k, v| organized_list[k] = v.sort_by{ |i| [i.schedulable.name, i.start] } }
    when "byvenue"
      organized_list = list.group_by{|i| i.location.venue.name}
      organized_list.each { |k, v| organized_list[k] = organize_list(v, params.merge({:organize => "bydate"})) }
    when "bydate"
      organized_list = list.group_by{|s| s.start.to_date}
      organized_list.each { |k, v| organized_list[k] = v.sort_by{ |item| [item.start, item.location.venue.name] } }
    else
      raise "unknown organization type #{organize_by}"
    end
    organized_list
  end
    
  def past_present_future(date)
    return "" unless date.present?
    case (date.to_date <=> current_time.to_date)
      when -1 then "past"
      when 0 then "present"
      when 1 then "future"
    end      
  end

  def time_list(schedulables)
    return "" unless schedulables
    times_array = schedulables.map { |schedulable| times(schedulable) }
    times_array = times_array.reject(&:blank?)
    return "" if times_array.empty?
    ", " + times_array.join(", ")
  end

  def times(schedulable)
    return "" unless schedulable
    times_array = []
    times_array << time_format(schedulable.start).chop if schedulable.start.present?
    times_array << time_format(schedulable.end).chop if schedulable.end.present?
    times_array.join(" - ").downcase
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
