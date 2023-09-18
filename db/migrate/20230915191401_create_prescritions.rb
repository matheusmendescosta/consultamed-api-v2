class CreatePrescritions < ActiveRecord::Migration[7.0]
  def change
    create_table :prescritions do |t|
      t.string :name
      t.string :recomendation
      t.references :consultation, null: false, foreign_key: true

      t.timestamps
    end
  end
end
