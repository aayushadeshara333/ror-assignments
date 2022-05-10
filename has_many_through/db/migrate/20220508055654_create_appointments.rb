class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.date :appointment_date, null: false
      t.references :physician
      t.references :patient
      t.timestamps
    end
  end
end
