class Product < ApplicationRecord

  has_many :product_categories
  has_many :line_items

  validates :name, :description, :image, presence: true
  validates :name, uniqueness: true
  validates :name, length: { minimum: 3 }

end
