class CreateSpecialEvents < ActiveRecord::Migration
  def change
    create_table :special_events do |t|
      t.string :name
      t.string :description
      t.string :link
      t.string :logo
      t.references :event
      t.datetime :special_event_start
      t.datetime :special_event_end

      t.timestamps
    end
    add_index :special_events, :event_id
  end
end
