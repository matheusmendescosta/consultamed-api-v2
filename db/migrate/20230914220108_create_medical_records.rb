class CreateMedicalRecords < ActiveRecord::Migration[7.0]
  def change
    create_table :medical_records do |t|
      t.boolean :allergy
      t.string :type_allergy
      t.boolean :surgery
      t.string :type_surgery
      t.boolean :continuous_medication
      t.string :type_continuous_medication
      t.float :weigth
      t.float :stature
      t.references :consultation, null: false, foreign_key: true

      t.timestamps
    end
  end
end
