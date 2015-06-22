class AddTargetEventToCycle < ActiveRecord::Migration
  def change
    add_column :cycles, :targetevent_id, :integer
  end
end
