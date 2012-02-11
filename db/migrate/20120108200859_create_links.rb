class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.references :linkable, :polymorphic => true
      t.string :linkable_type
      t.references :weblocation
      t.string :url

      t.timestamps
    end
  end
end
