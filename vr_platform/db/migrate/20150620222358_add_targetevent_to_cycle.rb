class AddTargeteventToCycle < ActiveRecord::Migration
  def change
    add_column :cycles, :target_id, :integer
  end
end
