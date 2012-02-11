class CreateOccurrences < ActiveRecord::Migration
  def change
    create_table :occurrences do |t|
      t.datetime :event_start
      t.datetime :event_end
      t.references :event
      t.float :cover_charge

      t.timestamps
    end
    add_index :occurrences, :event_id
  end
end
