class LineItem < ApplicationRecord

  belongs_to :order
  belongs_to :product

  validates :order, :product, :quantity, :price, presence: true
  validates :price, :quantity, numericality: true

end
