class AddSpecialEventToEvents < ActiveRecord::Migration
  def change
    add_column :events, :is_special, :boolean, :default => false
  end
end
