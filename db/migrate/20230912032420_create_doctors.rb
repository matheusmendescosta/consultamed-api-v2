class CreateDoctors < ActiveRecord::Migration[7.0]
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :crm
      t.string :email
      t.datetime :service_hours
      t.string :accreditation_info
      t.references :specialty, null: false, foreign_key: true

      t.timestamps
    end
  end
end
