class AddCoverChargeToOccurrence < ActiveRecord::Migration
  def change
    add_column :occurrences, :cover_charge, :float
  end
end
