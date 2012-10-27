class Admin::FestivalsController < ApplicationController

  before_filter :authenticate_user!
  layout 'admin'

    # GET /admin/festivals
    # GET /admin/festivals.json
    def index
      @festivals = Festival.all

      respond_to do |format|
        format.html 
        format.json { render :json => @festivals }
      end
    end

    # GET /admin/festivals/new
    # GET /admin/festivals/new.json
    def new
      @festival = Festival.new
      @weblocations = Weblocation.all.sort{ |a, b| a.name.downcase <=> b.name.downcase }

      respond_to do |format|
        format.html # new.html.erb
        format.json { render :json => @festival }
      end
    end

    # GET /admin/festivals/1/edit
    def edit
      @festival = Festival.find(params[:id])
      @weblocations = Weblocation.all.sort{ |a, b| a.name.downcase <=> b.name.downcase }
    end

    # POST /admin/festivals
    # POST /admin/festivals.jsonhttp://localhost:3000/schedules/394
    def create
      @festival = Festival.new(params[:festival])
      @weblocations = Weblocation.all.sort{ |a, b| a.name.downcase <=> b.name.downcase }

      respond_to do |format|
        if @festival.save
          format.html { redirect_to :action => "index", :notice => 'Festival was successfully updated.' }
          format.json { render :json => @festival, :status => :created, :location => @festival }
        else
          format.html { render :action => "new" }
          format.json { render :json => @festival.errors, :status => :unprocessable_entity }
        end
      end
    end

    # PUT /admin/festivals/1
    # PUT /admin/festivals/1.json
    def update
      @festival = Festival.find(params[:id])

      respond_to do |format|
        if @festival.update_attributes(params[:festival])
          format.html { redirect_to :action => "index", :notice => 'Festival was successfully updated.' }
          format.json { head :ok }
        else
          format.html { render :action => "edit" }
          format.json { render :json => @festival.errors, :status => :unprocessable_entity }
        end
      end
    end

    # DELETE /admin/festivals/1
    # DELETE /admin/festivals/1.json
    def destroy
      @festival = Festival.find(params[:id])
      if Schedule.where(:schedulable_id => @festival, :schedulable_type => "Festival").exists?
        respond_to do |format|
          format.html { redirect_to admin_festivals_url, :notice => "Cannot delete the festival #{@festival.name} because it is referenced by one or more schedule items. Delete those first." } 
          format.json { head :ok }
        end
      else
        @festival.destroy
        respond_to do |format|
          format.html { redirect_to admin_festivals_url, :notice => "Successfully deleted the festival #{@festival.name}" }
          format.json { head :ok }
        end
      end
    end
end
