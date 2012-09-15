class AddLogoToFestivals < ActiveRecord::Migration
  def change
    add_column :festivals, :logo, :string
  end
end
