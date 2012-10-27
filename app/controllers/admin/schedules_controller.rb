class Admin::SchedulesController < ApplicationController

  before_filter :authenticate_user!
  before_filter :get_locations
  layout 'admin'

  # GET /admin/schedules
  # GET /admin/schedules.json
  def index
    @parents = Schedule.all_parents    
    respond_to do |format|
      format.html 
      format.json { render :json => @parents }
    end
  end

  # GET /admin/schedules/new
  # GET /admin/schedules/new.json
  def new
    @schedule = Schedule.new
    @weblocations = Weblocation.all.sort{ |a, b| a.name.downcase <=> b.name.downcase }
    @scheduleables = @acts = Act.all.sort{ |a, b| a.name.downcase <=> b.name.downcase }
    @events = Event.all.sort{ |a, b| a.name.downcase <=> b.name.downcase }
    @festivals = Festival.all.sort{ |a, b| a.name.downcase <=> b.name.downcase }

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @schedule }
    end
  end

  # GET /admin/schedules/new_child
  # GET /admin/schedules/new_child.json
  def new_child
    @parent = Schedule.find(params[:parent_id])
    @schedule = @parent.children.build
    @schedule.start = @parent.start
    @schedule.end = @parent.end
    @schedule.location = @parent.location
    @weblocations = Weblocation.all.sort{ |a, b| a.name.downcase <=> b.name.downcase }
    @acts = Act.all.sort{ |a, b| a.name.downcase <=> b.name.downcase }
    @events = Event.all.sort{ |a, b| a.name.downcase <=> b.name.downcase }
    @festivals = Festival.all.sort{ |a, b| a.name.downcase <=> b.name.downcase }
    @schedulables = @acts
  
    respond_to do |format|
      format.html # new_child.html.erb
      format.json { render :json => @schedule }
    end
  end

  # POST /admin/schedules
  # POST /admin/schedules.json
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

  # GET /admin/schedules/1/edit
  def edit
    @schedule = Schedule.find(params[:id])
    @weblocations = Weblocation.all.sort{ |a, b| a.name.downcase <=> b.name.downcase }
    @festivals = Festival.all.sort{ |a, b| a.name.downcase <=> b.name.downcase }
    @schedulables = @schedule.schedulable_type.camelize.constantize.all.sort{ |a, b| a.name.downcase <=> b.name.downcase }
    @parent = @schedule.parent

    respond_to do |format|
      if @parent
        format.html { render :action => "edit_child" }
      else
        format.html { render :action => "edit" }
      end
    end
    
  end

  # POST /admin/schedules
  # POST /admin/schedules.json
  def create
    @schedule = Schedule.new(params[:schedule])    

    respond_to do |format|
      if @schedule.save
        format.html { redirect_to :action => "index", :notice => 'Schedule was successfully updated.' }
        format.json { render :json => @schedule, :status => :created, :location => @schedule }
      else
        format.html { render :action => "new" }
        format.json { render :json => @schedule.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /admin/schedules/1
  # PUT /admin/schedules/1.json
  def update
    @schedule = Schedule.find(params[:id])
    @schedulables = @schedule.schedulable_type.camelize.constantize.all.sort{ |a, b| a.name.downcase <=> b.name.downcase }
    @parent = @schedule.parent

    respond_to do |format|
      if @schedule.update_attributes(params[:schedule])
        format.html { redirect_to :action => "index", :notice => 'Schedule was successfully updated.' }
        format.json { head :ok }
      else
        if @parent
          format.html { render :action => "edit_child" }
        else
          format.html { render :action => "edit" }
        end
        format.json { render :json => @schedule.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/schedules/1
  # DELETE /admin/schedules/1.json
  def destroy
    @schedule = Schedule.find(params[:id])
    if @schedule.children.count > 0
      respond_to do |format|
        format.html { redirect_to admin_schedules_url, :alert => "Cannot delete this parent scheduled item #{@schedule.schedulable.name} because it has child items. Delete those first." } 
        format.json { head :ok }
      end
    else
      @schedule.destroy
      respond_to do |format|
        format.html { redirect_to admin_schedules_url, :alert => "Successfully deleted scheduled item #{@schedule.schedulable.name}" }
        format.json { head :ok }
      end
    end
  end

  private

  def get_locations
    @locations = Location.all.sort { |a, b| a.form_picker_name.downcase <=> b.form_picker_name.downcase }    
  end

end
