class AddComplementAddressToAddress < ActiveRecord::Migration[7.0]
  def change
    add_column :addresses, :complement, :string
  end
end
