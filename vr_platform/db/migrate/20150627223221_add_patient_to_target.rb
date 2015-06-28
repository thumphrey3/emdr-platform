class AddPatientToTarget < ActiveRecord::Migration
  def change
    add_reference :targets, :patient_id, index: true
  end
end
