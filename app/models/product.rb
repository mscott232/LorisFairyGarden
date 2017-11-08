class Product < ApplicationRecord

  has_many :product_categories
  has_many :line_items

end
