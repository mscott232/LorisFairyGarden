class RemoveLastNameFromCustomers < ActiveRecord::Migration[5.1]
  def change
    remove_column :customers, :last_name, :string
  end
end
