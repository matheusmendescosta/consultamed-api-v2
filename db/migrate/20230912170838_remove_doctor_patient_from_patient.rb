class RemoveDoctorPatientFromPatient < ActiveRecord::Migration[7.0]
  def change
    remove_reference :patients, :doctor, null: false, foreign_key: true
  end
end
