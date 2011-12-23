class CreatePerformances < ActiveRecord::Migration
  def change
    create_table :performances do |t|
      t.references :act
      t.references :occurrence
      t.references :location

      t.datetime :promotion_start
      t.datetime :promotion_end
      t.integer :priority

      t.timestamps
    end
    add_index :performances, :act_id
    add_index :performances, :location_id
    add_index :performances, :occurrence_id
  end
end
