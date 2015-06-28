class CreateTargets < ActiveRecord::Migration
  def change
    create_table :targets do |t|
      t.string :name
      t.text :description
      t.string :priority
      t.references :patient_idt, index: true

      t.timestamps
    end
  end
end
