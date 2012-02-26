class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.references :schedulable
      t.string :schedulable_type
      t.datetime :start
      t.datetime :end
      t.references :location
      t.references :parent

      t.timestamps
    end
  end
end
