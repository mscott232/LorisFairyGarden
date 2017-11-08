class AddCategoryRefToProductCategories < ActiveRecord::Migration[5.1]
  def change
    add_reference :product_categories, :category, foreign_key: true
  end
end
