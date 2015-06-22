class RemoveTargeteventFromCycle < ActiveRecord::Migration
  def change
    remove_column :cycles, :target_id, :integer
  end
end
