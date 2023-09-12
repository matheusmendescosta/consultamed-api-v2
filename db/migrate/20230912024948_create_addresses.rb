class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses do |t|
      t.integer :zip_code
      t.string :street
      t.integer :number
      t.string :city
      t.string :state
      t.string :country

      t.timestamps
    end
  end
end
