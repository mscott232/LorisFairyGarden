class RemoveConfirmationTokenFromCustomers < ActiveRecord::Migration[5.1]
  def change
    remove_column :customers, :confirmation_token, :string
    remove_column :customers, :confirmed_at
    remove_column :customers, :confirmation_sent_at
    remove_column :customers, :unconfirmed_email, :string
  end
end
