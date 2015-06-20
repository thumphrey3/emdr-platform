class AddCycleToBlsexposure < ActiveRecord::Migration
  def change
    add_column :blsexposures, :cycle_id, :integer
  end
end
