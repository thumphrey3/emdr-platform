class AddTelephoneNoToPatients < ActiveRecord::Migration
  def change
    add_column :patients, :telephone_no, :string
    add_column :patients, :zipcode, :string
    add_column :patients, :emergencycontact, :string
    add_column :patients, :emergencycontact_no, :string
  end
end
