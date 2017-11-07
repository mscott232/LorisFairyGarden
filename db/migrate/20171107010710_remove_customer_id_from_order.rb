class RemoveCustomerIdFromOrder < ActiveRecord::Migration[5.1]
  def change
    remove_column :orders, :customer_id, :integer
  end
end
