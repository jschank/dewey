class CreateWeblocations < ActiveRecord::Migration
  def change
    create_table :weblocations do |t|
      t.string :name
      t.string :tagline
      t.string :icon

      t.timestamps
    end
  end
end
