class Admin::EventsController < ApplicationController
  before_filter :authenticate_user!
  layout 'admin'

    # GET /admin/events
    # GET /admin/events.json
    def index
      @events = Event.all

      respond_to do |format|
        format.html 
        format.json { render :json => @events }
      end
    end

    # GET /admin/events/new
    # GET /admin/events/new.json
    def new
      @event = Event.new
      @weblocations = Weblocation.all.sort{ |a, b| a.name.downcase <=> b.name.downcase }

      respond_to do |format|
        format.html # new.html.erb
        format.json { render :json => @event }
      end
    end

    # GET /admin/events/1/edit
    def edit
      @event = Event.find(params[:id])
      @weblocations = Weblocation.all.sort{ |a, b| a.name.downcase <=> b.name.downcase }
    end

    # POST /admin/events
    # POST /admin/events.json
    def create
      @event = Event.new(params[:event])

      respond_to do |format|
        if @event.save
          format.html { redirect_to :action => "index", :notice => 'Event was successfully updated.' }
          format.json { render :json => @event, :status => :created, :location => @event }
        else
          format.html { render :action => "new" }
          format.json { render :json => @event.errors, :status => :unprocessable_entity }
        end
      end
    end

    # PUT /admin/events/1
    # PUT /admin/events/1.json
    def update
      @event = Event.find(params[:id])

      respond_to do |format|
        if @event.update_attributes(params[:event])
          format.html { redirect_to :action => "index", :notice => 'Event was successfully updated.' }
          format.json { head :ok }
        else
          format.html { render :action => "edit" }
          format.json { render :json => @event.errors, :status => :unprocessable_entity }
        end
      end
    end

    # DELETE /admin/events/1
    # DELETE /admin/events/1.json
    def destroy
      @event = Event.find(params[:id])
      if Schedule.where(:schedulable_id => @event, :schedulable_type => "Event").exists?
        respond_to do |format|
          format.html { redirect_to admin_events_url, :notice => "Cannot delete the event #{@event.name} because it is referenced by one or more schedule items. Delete those first." } 
          format.json { head :ok }
        end
      else
        @event.destroy
        respond_to do |format|
          format.html { redirect_to admin_events_url, :notice => "Successfully deleted the event #{@event.name}" }
          format.json { head :ok }
        end
      end
    end
end
