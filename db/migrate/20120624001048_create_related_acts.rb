class CreateRelatedActs < ActiveRecord::Migration
  def change
    create_table :related_acts do |t|
      t.integer :act_1_id
      t.integer :act_2_id

      t.timestamps
    end
  end
end
