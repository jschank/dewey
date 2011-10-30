class RemoveEventIdFromSpecialEvents < ActiveRecord::Migration
  def up
    remove_column :special_events, :event_id
  end

  def down
    add_column :special_events, :event_id, :integer
  end
end
