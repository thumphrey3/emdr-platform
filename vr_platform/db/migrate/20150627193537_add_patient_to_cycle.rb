class AddPatientToCycle < ActiveRecord::Migration
  def change
    add_reference :cycles, :patient, index: true
  end
end
