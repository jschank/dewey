class AddLogoToWeblocations < ActiveRecord::Migration
  def change
    add_column :weblocations, :logo, :string
  end
end
