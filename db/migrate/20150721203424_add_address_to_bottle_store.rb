class AddAddressToBottleStore < ActiveRecord::Migration
  def change
    add_column :bottle_stores, :address, :string
  end
end
