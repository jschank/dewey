class EventsController < ApplicationController

  # GET /events
  # GET /events.json
  def index
    @events = Schedule.upcoming(current_time - 6.months).of_type(Event).map{|item| item.schedulable}.uniq

    respond_to do |format|
      format.html 
      format.json { render :json => @events }
    end
  end

  # GET /events/1
  # GET /events/1.json
  def show
    @event = Event.find(params[:id])
    @in_progress = Schedule.in_progress(current_time).of_schedulable(@event).map{ |i| i.get_ultimate_parent }.uniq
    @upcoming = Schedule.upcoming(current_time).of_schedulable(@event).map{ |i| i.get_ultimate_parent }.uniq

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @event }
    end
  end

end
