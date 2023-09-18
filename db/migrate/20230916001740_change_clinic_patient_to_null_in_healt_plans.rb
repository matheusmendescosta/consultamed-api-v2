class ChangeClinicPatientToNullInHealtPlans < ActiveRecord::Migration[7.0]
  def change
    change_column_null :health_plans, :clinic_id, true
    change_column_null :health_plans, :patient_id, true
  end
end
