class Order < ApplicationRecord

  belongs_to :customer
  has_many :line_items
  belongs_to :order_status

  validates :customer_id, :order_status_id, presence: true

end
