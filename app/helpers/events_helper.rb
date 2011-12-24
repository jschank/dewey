module EventsHelper

  def is_empty(string)
    string == nil || string.strip.empty?
  end

end
