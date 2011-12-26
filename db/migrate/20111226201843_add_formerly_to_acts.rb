class AddFormerlyToActs < ActiveRecord::Migration
  def change
    add_column :acts, :formerly, :string
  end
end
