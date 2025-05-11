class AddAddressToUsers < ActiveRecord::Migration[8.0]
  def change
    add_column :users, :address, :string
    change_column_null :users, :address, false
  end
end
