class CreatePromotions < ActiveRecord::Migration
  def change
    create_table :promotions do |t|
      t.string :name
      t.text :description

      t.string :website
      t.string :facebook
      t.string :twitter

      t.string :logo

      t.timestamps
    end
  end
end
