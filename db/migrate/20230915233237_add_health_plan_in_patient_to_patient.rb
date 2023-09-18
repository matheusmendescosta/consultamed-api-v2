class AddHealthPlanInPatientToPatient < ActiveRecord::Migration[7.0]
  def change
    add_reference :patients, :health_plan, null: false, foreign_key: true
  end
end
