class AddSpecialEventReferenceToEvent < ActiveRecord::Migration
  def change
    add_column :events, :special_event_id, :integer
  end
end
