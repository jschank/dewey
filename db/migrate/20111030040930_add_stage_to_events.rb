class AddStageToEvents < ActiveRecord::Migration
  def change
    add_column :events, :stage, :string
  end
end
