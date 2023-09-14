class CreateConsultations < ActiveRecord::Migration[7.0]
  def change
    create_table :consultations do |t|
      t.references :doctor, null: false, foreign_key: true
      t.references :patient, null: false, foreign_key: true
      t.references :clinic, null: false, foreign_key: true
      t.string :prognostic
      t.string :diagnosis

      t.timestamps
    end
  end
end
