class VenuesController < ApplicationController

  # GET /venues
  # GET /venues.json
  def index
    @venues = Venue.all

    respond_to do |format|
      format.html 
      format.json { render :json => @venues }
    end
  end

  # GET /venues/1
  # GET /venues/1.json
  def show
    @venue = Venue.find(params[:id])
    @in_progress = Schedule.in_progress(current_time).at_venue(@venue).reject{ |i| i.is_parent? }
    @upcoming = Schedule.upcoming(current_time).at_venue(@venue).map{ |i| i.get_ultimate_parent }.uniq

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @venue }
    end
  end

end
