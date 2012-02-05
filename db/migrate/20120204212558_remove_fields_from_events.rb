class RemoveFieldsFromEvents < ActiveRecord::Migration
  def up
    remove_column :events, :website
    remove_column :events, :facebook
    remove_column :events, :twitter
  end

  def down
    add_column :events, :website, :string
    add_column :events, :facebook, :string
    add_column :events, :twitter, :string
  end
end
