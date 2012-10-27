class FestivalsController < ApplicationController

  # GET /festivals
  # GET /festivals.json
  def index
    @festivals = Festival.all

    respond_to do |format|
      format.html 
      format.json { render :json => @festivals }
    end
  end

  # GET /festivals/1
  # GET /festivals/1.json
  def show
    @festival = Festival.find(params[:id])
    @upcoming = Schedule.at_festival(@festival).map{ |i| i.get_ultimate_parent }.uniq
    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @festival }
    end
  end

end
