class CreateTargetevents < ActiveRecord::Migration
  def change
    create_table :targetevents do |t|
      t.string :name
      t.text :description
      t.string :priority

      t.timestamps
    end
  end
end
