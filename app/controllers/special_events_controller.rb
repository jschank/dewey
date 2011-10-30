class SpecialEventsController < ApplicationController
  # GET /special_events
  # GET /special_events.json
  def index
    @special_events = SpecialEvent.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @special_events }
    end
  end

  # GET /special_events/1
  # GET /special_events/1.json
  def show
    @special_event = SpecialEvent.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @special_event }
    end
  end

  # GET /special_events/new
  # GET /special_events/new.json
  def new
    @special_event = SpecialEvent.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @special_event }
    end
  end

  # GET /special_events/1/edit
  def edit
    @special_event = SpecialEvent.find(params[:id])
  end

  # POST /special_events
  # POST /special_events.json
  def create
    @special_event = SpecialEvent.new(params[:special_event])

    respond_to do |format|
      if @special_event.save
        format.html { redirect_to @special_event, :notice => 'Special event was successfully created.' }
        format.json { render :json => @special_event, :status => :created, :location => @special_event }
      else
        format.html { render :action => "new" }
        format.json { render :json => @special_event.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /special_events/1
  # PUT /special_events/1.json
  def update
    @special_event = SpecialEvent.find(params[:id])

    respond_to do |format|
      if @special_event.update_attributes(params[:special_event])
        format.html { redirect_to @special_event, :notice => 'Special event was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @special_event.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /special_events/1
  # DELETE /special_events/1.json
  def destroy
    @special_event = SpecialEvent.find(params[:id])
    @special_event.destroy

    respond_to do |format|
      format.html { redirect_to special_events_url }
      format.json { head :ok }
    end
  end
end
