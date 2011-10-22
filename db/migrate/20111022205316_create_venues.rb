class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :name
      t.string :logo
      t.text :address
      t.binary :gps_coordinates
      t.text :hours
      t.string :link
      t.text :description

      t.timestamps
    end
  end
end
