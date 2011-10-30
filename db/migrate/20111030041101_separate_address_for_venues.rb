class SeparateAddressForVenues < ActiveRecord::Migration
  def up
    remove_column :venues, :address
    add_column :venues, :address1, :string
    add_column :venues, :address2, :string
    add_column :venues, :city, :string
    add_column :venues, :state, :string
    add_column :venues, :zip, :string
  end

  def down
    add_column :venues, :address, :text
    remove_column :venues, :address1
    remove_column :venues, :address2
    remove_column :venues, :city
    remove_column :venues, :state
    remove_column :venues, :zip
  end
end
