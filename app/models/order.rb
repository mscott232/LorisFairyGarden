class Order < ApplicationRecord

  belongs_to :customer
  has_many :line_items
  belongs_to :order_status
  before_create :set_order_status
  before_save :update_subtotal

  def subtotal
    line_items.collect { |li| li.valid? ? (li.quantity * li.unit_price) : 0}.sum
  end

  private
    def set_order_status
      self.order_status.id = 1
    end

    def update_subtotal
      self[:subtotal] = subtotal
    end

end
