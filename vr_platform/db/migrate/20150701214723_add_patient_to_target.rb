class AddPatientToTarget < ActiveRecord::Migration
  def change
    add_reference :targets, :patient, index: true
  end
end
