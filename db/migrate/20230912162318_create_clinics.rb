class CreateClinics < ActiveRecord::Migration[7.0]
  def change
    create_table :clinics do |t|
      t.string :name
      t.string :email
      t.integer :phone
      t.references :doctor, null: false, foreign_key: true
      t.references :patient, null: false, foreign_key: true
      t.references :address, null: false, foreign_key: true
      t.references :specialty, null: false, foreign_key: true

      t.timestamps
    end
  end
end
