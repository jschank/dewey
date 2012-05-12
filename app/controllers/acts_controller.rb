class ActsController < ApplicationController

before_filter :authenticate_user!, :except => [:index, :show]

  # GET /acts
  # GET /acts.json
  def index
    @acts = Act.all.sort { |a, b| a.name.downcase <=> b.name.downcase }

    respond_to do |format|
      format.html 
      format.json { render :json => @acts }
    end
  end

  # GET /acts/1
  # GET /acts/1.json
  def show
    @act = Act.find(params[:id])
    @future_schedulables = Act.upcoming(DateTime.civil(2011, 01, 01), @act)

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @act }
    end
  end

  # GET /acts/new
  # GET /acts/new.json
  def new
    @act = Act.new
    @weblocations = Weblocation.all.sort{ |a, b| a.name.downcase <=> b.name.downcase }

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @act }
    end
  end

  # GET /acts/1/edit
  def edit
    @act = Act.find(params[:id])
    @weblocations = Weblocation.all.sort{ |a, b| a.name.downcase <=> b.name.downcase }
  end

  # POST /acts
  # POST /acts.json
  def create
    @act = Act.new(params[:act])

    respond_to do |format|
      if @act.save
        flash[:notice] = "Hello"
        format.html { redirect_to @act, :notice => 'Act was successfully created.' }
        format.json { render :json => @act, :status => :created, :location => @act }
      else
        format.html { render :action => "new" }
        format.json { render :json => @act.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /acts/1
  # PUT /acts/1.json
  def update
    @act = Act.find(params[:id])

    respond_to do |format|
      if @act.update_attributes(params[:act])
        format.html { redirect_to @act, :notice => 'Act was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @act.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /acts/1
  # DELETE /acts/1.json
  def destroy
    @act = Act.find(params[:id])
    @act.destroy

    respond_to do |format|
      format.html { redirect_to acts_url }
      format.json { head :ok }
    end
  end
end
