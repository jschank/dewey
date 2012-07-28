class AddPopularityToWeblocations < ActiveRecord::Migration
  def change
    add_column :weblocations, :popularity, :integer, :default => 100
  end
end
