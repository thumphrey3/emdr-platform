class RemovePatientFromTarget < ActiveRecord::Migration
  def change
    remove_reference :targets, :patient_idt, index: true
  end
end
