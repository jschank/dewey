class AddOrderToDetails < ActiveRecord::Migration
  def change
    add_column :details, :order, :integer, :default => 1000
  end
end
