class CreateFeatures < ActiveRecord::Migration
  def change
    create_table :features do |t|
      t.references :location
      t.references :performance
      t.references :occurrence
      t.integer :priority
      
      t.timestamps
    end
    add_index :features, :location_id
    add_index :features, :performance_id
    add_index :features, :occurrence_id
  end
end
