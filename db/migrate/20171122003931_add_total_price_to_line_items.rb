class AddTotalPriceToLineItems < ActiveRecord::Migration[5.1]
  def change
    add_column :line_items, :total_price, :decimal
  end
end
