class AddOrderToSchedules < ActiveRecord::Migration
  def change
    add_column :schedules, :order, :integer, :default => 1000
  end
end
