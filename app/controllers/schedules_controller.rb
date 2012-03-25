class SchedulesController < ApplicationController

  def index
    @schedule = Schedule.future_events(DateTime.civil(2011, 01, 01))
    
    respond_to do |format|
      format.html 
      format.json { render :json => @schedule }
    end
  end

  # GET /schedules/1
  # GET /schedules/1.json
  def show
    @schedule = Schedule.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @schedule }
    end
  end


end
