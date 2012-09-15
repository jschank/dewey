module FestivalsHelper
  
  def festival_dates(festival)
    year = festival.start.year
    start_month = festival.start.strftime("%B")
    end_month = festival.end.strftime("%B")
    start_day = festival.start.day
    end_day = festival.end.day    
    return "#{start_month} #{start_day} - #{end_day}, #{year}" if start_month == end_month
    return "#{start_month} #{start_day} - #{end_month} #{end_day}, #{year}"
  end
  
end
