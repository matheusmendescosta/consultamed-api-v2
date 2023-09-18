class CreateQueryHistories < ActiveRecord::Migration[7.0]
  def change
    create_table :query_histories do |t|
      t.references :consultation, null: false, foreign_key: true

      t.timestamps
    end
  end
end
