class AddNotesToCycle < ActiveRecord::Migration
  def change
    add_column :cycles, :notes, :text
    add_column :cycles, :body_final, :text
  end
end
