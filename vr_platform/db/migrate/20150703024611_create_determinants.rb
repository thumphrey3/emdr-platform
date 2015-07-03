class CreateDeterminants < ActiveRecord::Migration
  def change
    create_table :determinants do |t|
      t.string :occupation
      t.string :education
      t.text :support_network
      t.text :personal_interest
      t.text :living_conditions
      t.string :ace_response
      t.references :patient, index: true

      t.timestamps
    end
  end
end
