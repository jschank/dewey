class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :name
      t.text :description

      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :zip

      t.string :phone

      t.timestamps
    end
  end
end
