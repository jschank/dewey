class CreateActs < ActiveRecord::Migration
  def change
    create_table :acts do |t|
      t.string :name
      t.text :description
      t.string :hometown
      t.string :formerly

      t.timestamps
    end
  end
end
