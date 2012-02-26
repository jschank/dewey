class ScheduleController < ApplicationController

  def upcoming
    @schedule = Schedule.future_events(DateTime.civil(2011, 01, 01))
    
    respond_to do |format|
      format.html # upcoming_events.html.erb
      format.json { render :json => @events }
    end
  end

end
