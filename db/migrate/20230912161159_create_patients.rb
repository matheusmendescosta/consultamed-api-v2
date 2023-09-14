class CreatePatients < ActiveRecord::Migration[7.0]
  def change
    create_table :patients do |t|
      t.string :name
      t.datetime :date_birth
      t.string :email
      t.integer :phone
      t.boolean :health_plan

      t.timestamps
    end
  end
end
