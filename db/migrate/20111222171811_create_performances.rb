class CreatePerformances < ActiveRecord::Migration
  def change
    create_table :performances do |t|
      t.datetime :promotion_start
      t.datetime :promotion_end
      t.references :promotion

      t.timestamps
    end
    add_index :performances, :promotion_id
  end
end
