class AddPhoneNumberToVenue < ActiveRecord::Migration
  def change
    change_table :venues do |t|
      t.string :phone_number
    end
  end
end
