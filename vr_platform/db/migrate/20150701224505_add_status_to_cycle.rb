class AddStatusToCycle < ActiveRecord::Migration
  def change
    add_column :cycles, :status, :string
  end
end
