class RemoveCategoriesFromProducts < ActiveRecord::Migration[5.1]
  def change
    remove_reference :products, :category, foreign_key: true
  end
end
