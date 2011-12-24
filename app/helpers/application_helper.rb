require 'pathname'

module ApplicationHelper

  def logo_for(thing, size)
    filename = thing.try(:logo)
    return unless filename
    ext = File.extname(filename)
    basename = File.basename(filename, ext)
    basename += "-sm" if size == :small
    basename += "-lg" if size == :large
    filename = basename + ext
    image_path(filename)    
  end

  def time_format(datetime)
    (datetime.min > 0) ? "%l:%M %p" : "%l %p"
  end

  def occurrence_times(occurrence)
    return "" unless occurrence
    start_time = (occurrence.event_start) ? occurrence.event_start.strftime(time_format(occurrence.event_start)) : "?"
    end_time   = (occurrence.event_end)   ? occurrence.event_end.strftime(time_format(occurrence.event_end)) : "?"
    "#{start_time} -#{end_time}".downcase
  end
  
  def performance_times(performance)
    return "" unless performance
    start_time = (performance.performance_start) ? performance.performance_start.strftime(time_format(performance.performance_start)) : "?"
    end_time   = (performance.performance_end)   ? performance.performance_end.strftime(time_format(performance.performance_end)) : "?"
    "#{start_time} -#{end_time}".downcase
  end
  
  def date_and_times(date, occurrence = nil)
    str = ""
    str += date.strftime("%A, %B %d, %Y")
    str += " at #{occurrence_times(occurrence)}" if occurrence
    str
  end

end
