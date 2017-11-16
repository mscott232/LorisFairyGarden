class Order < ApplicationRecord

  belongs_to :customer
  has_many :line_items

  validates :customer, :status, presence: true

end
