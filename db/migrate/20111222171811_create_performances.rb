class CreatePerformances < ActiveRecord::Migration
  def change
    create_table :performances do |t|
      t.references :act
      t.references :occurrence
      t.references :location

      t.datetime :performance_start
      t.datetime :performance_end
      t.integer :priority, :default => 1

      t.timestamps
    end
    add_index :performances, :act_id
    add_index :performances, :location_id
    add_index :performances, :occurrence_id
  end
end
