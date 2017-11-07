class RemoveProductsForeignKeyCategory < ActiveRecord::Migration[5.1]
  def change
    remove_foreign_key :products
  end
end
