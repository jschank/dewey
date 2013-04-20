class SchedulesController < ApplicationController

  # should refactor this into a config file.
  PAGINATION_THRESHOLD = 20
  MOBILE_PAGE_SIZE = 7
  BROWSER_PAGE_SIZE = 1000

  # GET /schedules
  # GET /schedules.json
  def index
    all_parents_upcoming = Schedule.includes(:schedulable, :children, :festival, :details, :location => [:venue] ).all_parents.upcoming(current_time)
    parents_grouped_by_dates = all_parents_upcoming.group_by{|sched| sched.start.to_date}
    
    page_size = (request.user_agent =~ /[M|m]obile/) ? MOBILE_PAGE_SIZE : BROWSER_PAGE_SIZE  
    page, per = (all_parents_upcoming.count < PAGINATION_THRESHOLD) ? [1, nil] : [params[:page], page_size]
    dates = parents_grouped_by_dates.keys.sort
    @dates = Kaminari.paginate_array(dates).page(page).per(per)
    @upcoming = @dates.reduce([]){ |arr, date| arr += parents_grouped_by_dates[date] }
    @in_progress = Schedule.in_progress(current_time).map{ |i| i.get_ultimate_parent }.uniq.reject{ |i| i == @schedule }
            
    respond_to do |format|
      format.js { raise ActionController::RoutingError.new('Not Found') if params[:page].present? && params[:page].to_i > @dates.num_pages }
      format.html {flash[:notice] = params[:notice]}
    end
  end

  # GET /schedules/1
  # GET /schedules/1.json
  def show
    @schedule = Schedule.where(:id => params[:id]).first
    @in_progress = Schedule.in_progress(current_time).of_schedulable(@schedule.schedulable).map{ |i| i.get_ultimate_parent }.uniq.reject{ |i| i == @schedule }
    @upcoming = Schedule.upcoming(current_time).of_schedulable(@schedule.schedulable).map{ |i| i.get_ultimate_parent }.uniq.reject{ |i| i == @schedule }

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @schedule }
    end
  end

end
