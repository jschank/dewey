class Admin::ActsController < ApplicationController

  before_filter :authenticate_user!, :except => [:index, :show]
  layout 'admin'

  # GET /admin/acts
  # GET /admin/acts.json
  def index
    @acts = Act.all

    respond_to do |format|
      format.html 
      format.json { render :json => @acts }
    end
  end

  # GET /admin/acts/new
  # GET /admin/acts/new.json
  def new
    @act = Act.new
    @weblocations = Weblocation.all.sort{ |a, b| a.name.downcase <=> b.name.downcase }

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @act }
    end
  end

  # GET /admin/acts/1/edit
  def edit
    @act = Act.find(params[:id])
    @weblocations = Weblocation.all.sort{ |a, b| a.name.downcase <=> b.name.downcase }
  end

  # POST /admin/acts
  # POST /admin/acts.json
  def create
    @act = Act.new(params[:act])

    respond_to do |format|
      if @act.save
        format.html { redirect_to :action => "index", :notice => 'act was successfully created.' }
        format.json { render :json => @act, :status => :created, :location => @act }
      else
        format.html { render :action => "new" }
        format.json { render :json => @act.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /admin/acts/1
  # PUT /admin/acts/1.json
  def update
    @act = Act.find(params[:id])

    respond_to do |format|
      if @act.update_attributes(params[:act])
        format.html { redirect_to :action => "index", :notice => 'act was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @act.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/acts/1
  # DELETE /admin/acts/1.json
  def destroy
    @act = Act.find(params[:id])
    if Schedule.where(:schedulable_id => @act, :schedulable_type => "Act").exists?
      respond_to do |format|
        format.html { redirect_to admin_acts_url, :notice => "Cannot delete the act #{@act.name} because it is referenced by one or more schedule items. Delete those first." } 
        format.json { head :ok }
      end
    else
      @act.destroy
      respond_to do |format|
        format.html { redirect_to admin_acts_url, :notice => "Successfully deleted the act #{@act.name}" }
        format.json { head :ok }
      end
    end
  end
end
