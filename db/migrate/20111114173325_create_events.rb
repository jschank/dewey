class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.text :description      
      t.boolean :is_special, :default => false

      t.timestamps
    end
  end
end
