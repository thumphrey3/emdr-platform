class CreateBlsexposures < ActiveRecord::Migration
  def change
    create_table :blsexposures do |t|
      t.string :exposure_type
      t.string :phase
      t.integer :loop_no
      t.integer :score
      t.text :annotation

      t.timestamps
    end
  end
end
