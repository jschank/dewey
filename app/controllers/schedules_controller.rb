class SchedulesController < ApplicationController

before_filter :authenticate_user!, :except => [:index, :show]

  # GET /schedules
  # GET /schedules.json
  def index
    @all_parents = Schedule.where("parent_id is null")
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

  # GET /schedules/new
  # GET /schedules/new.json
  def new
    @schedule = Schedule.new
    @weblocations = Weblocation.all.sort{ |a, b| a.name.downcase <=> b.name.downcase }
    @locations = Location.all.sort { |a, b| a.form_picker_name.downcase <=> b.form_picker_name.downcase }
    @acts = Act.all.sort{ |a, b| a.name.downcase <=> b.name.downcase }
    @events = Event.all.sort{ |a, b| a.name.downcase <=> b.name.downcase }
    @schedulables = @acts

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @schedule }
    end
  end

  # GET /schedules/new_child
  # GET /schedules/new_child.json
  def new_child
    @parent = Schedule.find(params[:parent_id])
    @child = @parent.children.build
    @child.start = @parent.start
    @child.end = @parent.end
    @child.location = @parent.location
    @weblocations = Weblocation.all.sort{ |a, b| a.name.downcase <=> b.name.downcase }
    @locations = Location.all.sort { |a, b| a.form_picker_name.downcase <=> b.form_picker_name.downcase }
    @acts = Act.all.sort{ |a, b| a.name.downcase <=> b.name.downcase }
    @events = Event.all.sort{ |a, b| a.name.downcase <=> b.name.downcase }
    @schedulables = @acts
  
    respond_to do |format|
      format.html # new_child.html.erb
      format.json { render :json => @schedule }
    end
  end

  # POST /schedules
  # POST /schedules.json
  def create_child
    @schedule = Schedule.new(params[:schedule])    

    respond_to do |format|
      if @schedule.save
        format.html { redirect_to schedules_url, :notice => 'Schedule was successfully created.'  }
        format.json { render :json => @schedule, :status => :created, :location => @schedule }
      else
        format.html { render :action => "new_child" }
        format.json { render :json => @schedule.errors, :status => :unprocessable_entity }
      end
    end
  end

  # GET /schedules/1/edit
  def edit
    @schedule = Schedule.find(params[:id])
    @weblocations = Weblocation.all.sort{ |a, b| a.name.downcase <=> b.name.downcase }
    @locations = Location.all.sort { |a, b| a.form_picker_name.downcase <=> b.form_picker_name.downcase }
    @schedulables = @schedule.schedulable_type.camelize.constantize.all.sort{ |a, b| a.name.downcase <=> b.name.downcase }
  end

  # POST /schedules
  # POST /schedules.json
  def create
    @schedule = Schedule.new(params[:schedule])    

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

end
