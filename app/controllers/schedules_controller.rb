class SchedulesController < ApplicationController

  # GET /schedules
  # GET /schedules.json
  def index
    @parents = Schedule.all_parents
    @in_progress = Schedule.all_parents.in_progress(current_time)
    parents_grouped_by_dates = Schedule.all_parents.upcoming(current_time).group_by{|sched| sched.start.to_date}
    @dates = Kaminari.paginate_array(parents_grouped_by_dates.keys).page(params[:page]).per(4)
    @upcoming = @dates.reduce([]){ |arr, date| arr += parents_grouped_by_dates[date] }
    
    respond_to do |format|
      format.html {flash[:notice] = params[:notice]}
      format.json { render :json => @parents }
    end
  end

  # GET /schedules/1
  # GET /schedules/1.json
  def show
    @schedule = Schedule.find(params[:id])
    @in_progress = Schedule.in_progress(current_time).of_schedulable(@schedule.schedulable).map{ |i| i.get_ultimate_parent }.uniq.reject{ |i| i == @schedule }
    @upcoming = Schedule.upcoming(current_time).of_schedulable(@schedule.schedulable).map{ |i| i.get_ultimate_parent }.uniq.reject{ |i| i == @schedule }

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @schedule }
    end
  end

end
