namespace :update do

  desc "For any scheduled child item without start date or end date, COPY value from parent. IF start AND end WAS empty, then set DisplayTime to false."
  task :display_time  => :environment do
    puts "Updating Children..."
    Schedule.where("parent_id IS NOT NULL").each do |sched|
      child_start = sched.start
      child_end = sched.end
      parent_start = sched.parent.start
      parent_end = sched.parent.end
      
      child_name = sched.schedulable.name
    
      print "Checking times for #{child_name}: start = '#{child_start}', end = '#{child_end}': "
      if child_start.blank?
        puts
        sched.start = parent_start
        sched.end = parent_end unless child_end.present?
        sched.display_time = false
        sched.update!
        puts "\tsetting start time to #{sched.start}"
        puts "\tsetting end time to #{sched.end}" unless child_end.present?
        puts "\tsetting display time to #{sched.display_time}"
      else
        print "Child not changed!"
      end
      puts
    end
    puts "Done!"
  end
  
end