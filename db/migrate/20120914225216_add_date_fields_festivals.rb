class AddDateFieldsFestivals < ActiveRecord::Migration
  def up
	add_column :festivals, :start, :datetime
	add_column :festivals, :end, :datetime
  end
end
