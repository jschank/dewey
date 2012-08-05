class VenuesController < ApplicationController

before_filter :authenticate_user!, :except => [:index, :show]

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

  # GET /venues/new
  # GET /venues/new.json
  def new
    @venue = Venue.new
    @weblocations = Weblocation.all.sort{ |a, b| a.name.downcase <=> b.name.downcase }
	
    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @venue }
    end
  end

  # GET /venues/1/edit
  def edit
    @venue = Venue.find(params[:id])
    @weblocations = Weblocation.all.sort{ |a, b| a.name.downcase <=> b.name.downcase }
  end

  # POST /venues
  # POST /venues.json
  def create
    @venue = Venue.new(params[:venue])

    respond_to do |format|
      if @venue.save
        format.html { redirect_to :action => "index", :notice => 'Venue was successfully updated.' }
        format.json { render :json => @venue, :status => :created, :location => @venue }
      else
        format.html { render :action => "new" }
        format.json { render :json => @venue.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /venues/1
  # PUT /venues/1.json
  def update
    @venue = Venue.find(params[:id])

    respond_to do |format|
      if @venue.update_attributes(params[:venue])
        format.html { redirect_to :action => "index", :notice => 'Venue was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @venue.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /venues/1
  # DELETE /venues/1.json
  def destroy
    @venue = Venue.find(params[:id])
    @venue.destroy

    respond_to do |format|
      format.html { redirect_to venues_url }
      format.json { head :ok }
    end
  end
end
