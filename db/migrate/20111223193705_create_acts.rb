class CreateActs < ActiveRecord::Migration
  def change
    create_table :acts do |t|
      t.string :name
      t.text :description

      t.string :website
      t.string :facebook
      t.string :twitter
      t.string :hometown

      t.string :logo

      t.timestamps
    end
  end
end
