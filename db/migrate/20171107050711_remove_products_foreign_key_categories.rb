class RemoveProductsForeignKeyCategories < ActiveRecord::Migration[5.1]
  def change
    remove_foreign_key :categories, :products
  end
end
