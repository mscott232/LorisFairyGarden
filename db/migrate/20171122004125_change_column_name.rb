class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :line_items, :price, :unit_price
  end
end
