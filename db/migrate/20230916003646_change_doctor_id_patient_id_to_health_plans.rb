class ChangeDoctorIdPatientIdToHealthPlans < ActiveRecord::Migration[7.0]
  def change
    change_column_null :clinics, :doctor_id, true
    change_column_null :clinics, :patient_id, true
  end
end
