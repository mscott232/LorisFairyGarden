class RemoveOrderIdFromLineItem < ActiveRecord::Migration[5.1]
  def change
    remove_column :line_items, :order_id, :integer
  end
end
