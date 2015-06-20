class AddSessionToCycle < ActiveRecord::Migration
  def change
    add_column :cycles, :session_id, :integer
  end
end
