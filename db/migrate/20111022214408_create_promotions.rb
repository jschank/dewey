class CreatePromotions < ActiveRecord::Migration
  def change
    create_table :promotions do |t|
      t.string :name
      t.string :logo
      t.text :description
      t.string :link
      t.integer :kind

      t.timestamps
    end
  end
end
