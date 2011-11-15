class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.references :venue
      t.string :name

      t.timestamps
    end
    add_index :locations, :venue_id
  end
end
