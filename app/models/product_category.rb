class ProductCategory < ApplicationRecord

  belongs_to :category
  belongs_to :product

  validates :product, :category, presence: true

end
