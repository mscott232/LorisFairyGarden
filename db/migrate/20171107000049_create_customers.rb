class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :username
      t.string :password
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :city
      t.string :postal_code
      t.string :country
      t.integer :province_id
      t.string :email

      t.timestamps
    end
  end
end
