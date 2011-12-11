class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.string :url
      t.string :logo
      t.datetime :event_start
      t.datetime :event_end
      t.boolean :is_all_day
      t.boolean :is_special

      t.timestamps
    end
  end
end
