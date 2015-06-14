class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.integer :age
      t.text :medication
      t.text :conditions

      t.timestamps
    end
  end
end
