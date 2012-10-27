class ActsController < ApplicationController

  before_filter :authenticate_user!, :except => [:index, :show]

  # GET /acts
  # GET /acts.json
  def index
    @acts = Act.all

    respond_to do |format|
      format.html 
      format.json { render :json => @acts }
    end
  end

  # GET /acts/1
  # GET /acts/1.json
  def show
    @act = Act.find(params[:id])
    @in_progress = Schedule.in_progress(current_time).of_schedulable(@act).map{ |i| i.get_ultimate_parent }.uniq
    @upcoming = Schedule.upcoming(current_time).of_schedulable(@act).map{ |i| i.get_ultimate_parent }.uniq

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @act }
    end
  end

end
