class AddTimesToFeatures < ActiveRecord::Migration
  def change
    add_column :features, :start_time, :datetime
    add_column :features, :end_time, :datetime
  end
end
