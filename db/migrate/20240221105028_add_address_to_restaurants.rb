class AddAddressToRestaurants < ActiveRecord::Migration[7.1]
  def change
    add_column :restaurants, :address, :string
    change_column :restaurants, :phone_number, :string
  end
end
