class RemoveProductForeignKeyCategory < ActiveRecord::Migration[5.1]
  def change
    remove_foreign_key :products, :categories
  end
end
