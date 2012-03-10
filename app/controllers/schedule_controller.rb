class ScheduleController < ApplicationController

  def index
    @schedule = Schedule.future_events(DateTime.civil(2011, 01, 01))
    
    respond_to do |format|
      format.html 
      format.json { render :json => @events }
    end
  end

end
