class Category < ApplicationRecord

  has_many :product_categories

  validates :name, :description, presence: true

end
