class AddLogoToActs < ActiveRecord::Migration
  def change
    add_column :acts, :logo, :string
  end
end
