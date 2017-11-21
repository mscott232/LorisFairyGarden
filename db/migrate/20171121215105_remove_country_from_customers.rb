class RemoveCountryFromCustomers < ActiveRecord::Migration[5.1]
  def change
    remove_column :customers, :country, :string
  end
end
