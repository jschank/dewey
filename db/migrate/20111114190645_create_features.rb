class CreateFeatures < ActiveRecord::Migration
  def change
    create_table :features do |t|
      t.references :location
      t.references :promotion
      t.references :event
      t.integer :priority
      
      t.datetime :event_start
      t.datetime :event_end
      
      t.datetime :promotion_start
      t.datetime :promotion_end

      t.timestamps
    end
    add_index :features, :location_id
    add_index :features, :promotion_id
    add_index :features, :event_id
  end
end
