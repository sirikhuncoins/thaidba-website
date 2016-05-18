class AddDetailToUsers < ActiveRecord::Migration
  def change
    add_column :users, :address, :string
    add_column :users, :postal_code, :string
    add_column :users, :country, :string
    add_column :users, :contact_number, :string
  end
end
