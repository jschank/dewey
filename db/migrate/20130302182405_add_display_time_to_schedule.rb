class AddDisplayTimeToSchedule < ActiveRecord::Migration
  def change
    add_column :schedules, :DisplayTime, :boolean, :default => true
  end
end
