class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.datetime :appointment_date
      t.string :number

      t.timestamps
    end
  end
end
