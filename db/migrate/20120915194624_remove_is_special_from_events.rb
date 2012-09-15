class RemoveIsSpecialFromEvents < ActiveRecord::Migration
  def up
    remove_column :events, :is_special
  end

  def down
    add_column :events, :is_special, :boolean, :default => false
  end
end
