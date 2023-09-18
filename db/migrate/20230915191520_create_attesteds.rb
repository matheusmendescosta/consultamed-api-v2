class CreateAttesteds < ActiveRecord::Migration[7.0]
  def change
    create_table :attesteds do |t|
      t.string :attest
      t.string :days
      t.references :consultation, null: false, foreign_key: true

      t.timestamps
    end
  end
end
