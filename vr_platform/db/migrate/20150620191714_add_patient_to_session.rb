class AddPatientToSession < ActiveRecord::Migration
  def change
    add_column :sessions, :patient_id, :integer
  end
end
