class CreateCycles < ActiveRecord::Migration
  def change
    create_table :cycles do |t|
      t.text :picture
      t.text :negativecognition
      t.text :positivecognition
      t.integer :initial_voc
      t.integer :initial_sud
      t.text :emotion
      t.text :body_location

      t.timestamps
    end
  end
end
