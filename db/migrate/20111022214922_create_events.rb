class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.references :venue
      t.references :promotion
      t.datetime :event_start
      t.datetime :event_end
      t.boolean :is_all_day
      t.string :link
      t.text :description

      t.timestamps
    end
    add_index :events, :venue_id
    add_index :events, :promotion_id
  end
end
