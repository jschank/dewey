class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.integer :linkable_id
      t.string :linkable_type
      t.integer :weblocation_id
      t.string :url

      t.timestamps
    end
  end
end
