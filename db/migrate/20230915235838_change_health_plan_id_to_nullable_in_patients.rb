class ChangeHealthPlanIdToNullableInPatients < ActiveRecord::Migration[7.0]
  def change
    change_column_null :patients, :health_plan_id, true
  end
end
