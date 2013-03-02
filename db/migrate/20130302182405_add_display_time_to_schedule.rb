class AddDisplayTimeToSchedule < ActiveRecord::Migration
  def change
    add_column :schedules, :display_time, :boolean, :default => true
  end
end
