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
    @future_schedulables = Schedule.future_events_of(DateTime.civil(2011, 01, 01), @schedule.schedulable).reject{ |i| i == @schedule }
    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @schedule }
    end
  end

# I added everything from here...

  # GET /schedules/new
  # GET /schedules/new.json
  def new
    @schedule = Schedule.new
    @weblocations = Weblocation.all.sort{ |a, b| a.name.downcase <=> b.name.downcase }

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @schedule }
    end
  end

  # GET /schedules/1/edit
  def edit
    @schedule = Schedule.find(params[:id])
  end

  # POST /schedules
  # POST /schedules.json
  def create
    @schedule = Schedule.new(params[:act])

    respond_to do |format|
      if @schedule.save
        flash[:notice] = "Hello"
        format.html { redirect_to @schedule, :notice => 'Schedule was successfully created.' }
        format.json { render :json => @schedule, :status => :created, :location => @schedule }
      else
        format.html { render :action => "new" }
        format.json { render :json => @schedule.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /schedules/1
  # PUT /schedules/1.json
  def update
    @schedule = Schedule.find(params[:id])

    respond_to do |format|
      if @schedule.update_attributes(params[:schedule])
        format.html { redirect_to @schedule, :notice => 'Schedule was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @schedule.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /schedules/1
  # DELETE /schedules/1.json
  def destroy
    @schedule = Schedule.find(params[:id])
    @schedule.destroy

    respond_to do |format|
      format.html { redirect_to schedules_url }
      format.json { head :ok }
    end
  end

# ...to here




end
