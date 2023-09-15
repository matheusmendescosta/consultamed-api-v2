class RemoveConsultationInMedicalRecordFromMedicalRecord < ActiveRecord::Migration[7.0]
  def change
    remove_reference :medical_records, :consultation, null: false, foreign_key: true
  end
end
