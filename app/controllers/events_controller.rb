class EventsController < ApplicationController
  # GET /events
  # GET /events.json

  def index
    @events = Event.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @events }
    end
  end

  def upcoming
    occurrences = Occurrence.find(:all, :include => [:event, :venues, :performances, :acts, :locations, :venues ])
    @occurrences_by_date = occurrences.sort{ |a, b| a.event_start <=> b.event_start}.group_by { |event| event.event_start.to_date }

    respond_to do |format|
      format.html # upcoming_events.html.erb
      format.json { render :json => @events }
    end
  end

  # GET /events/1
  # GET /events/1.json
  def show
    @occurrence = Occurrence.find(params[:occurrence_id], :include => [:event, :performances, :acts, :locations, :venues ]) if params[:occurrence_id]
    @event = @occurrence.try(:event) || Event.find(params[:id])
    @future_occurrences = Occurrence.where("event_id = ? and event_start >= ?", params[:id], DateTime.civil(2011, 01, 01)).
      includes(:event, :performances, :acts, :locations, :venues)

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @event }
    end
  end

  # GET /events/new
  # GET /events/new.json
  def new
    @event = Event.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @event }
    end
  end

  # GET /events/1/edit
  def edit
    @event = Event.find(params[:id])
  end

  # POST /events
  # POST /events.json
  def create
    @event = Event.new(params[:event])

    respond_to do |format|
      if @event.save
        format.html { redirect_to @event, :notice => 'Event was successfully created.' }
        format.json { render :json => @event, :status => :created, :location => @event }
      else
        format.html { render :action => "new" }
        format.json { render :json => @event.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /events/1
  # PUT /events/1.json
  def update
    @event = Event.find(params[:id])

    respond_to do |format|
      if @event.update_attributes(params[:event])
        format.html { redirect_to @event, :notice => 'Event was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @event.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event = Event.find(params[:id])
    @event.destroy

    respond_to do |format|
      format.html { redirect_to events_url }
      format.json { head :ok }
    end
  end
end
