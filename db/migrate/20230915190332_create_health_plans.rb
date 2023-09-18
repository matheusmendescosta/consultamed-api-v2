class CreateHealthPlans < ActiveRecord::Migration[7.0]
  def change
    create_table :health_plans do |t|
      t.string :product
      t.integer :identification_code
      t.string :plan
      t.string :coverage
      t.boolean :coparcenary
      t.string :company
      t.integer :cns
      t.references :clinic, null: false, foreign_key: true
      t.references :patient, null: false, foreign_key: true

      t.timestamps
    end
  end
end
