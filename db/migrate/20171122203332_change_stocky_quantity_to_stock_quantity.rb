class ChangeStockyQuantityToStockQuantity < ActiveRecord::Migration[5.1]
  def change
    rename_column :products, :stocky_quantity, :stock_quantity
  end
end
