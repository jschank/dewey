class RemoveFieldsFromActs < ActiveRecord::Migration
  def up
    remove_column :acts, :website
    remove_column :acts, :facebook
    remove_column :acts, :twitter
  end

  def down
    add_column :acts, :website, :string
    add_column :acts, :facebook, :string
    add_column :acts, :twitter, :string
  end
end
