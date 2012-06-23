class CreateDetails < ActiveRecord::Migration
  def change
    create_table :details do |t|
      t.string :name
      t.string :description
      t.references :schedule

      t.timestamps
    end
  end
end
