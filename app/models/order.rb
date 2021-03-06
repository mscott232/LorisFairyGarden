class Order < ApplicationRecord

  # belongs_to :customer
  has_many :line_items
  belongs_to :order_status
  before_validation :set_order_status
  before_save :update_subtotal

  def subtotal
    line_items.collect { |li| li.valid? ? (li.quantity * li.unit_price) : 0}.sum
  end

  def calculate_total
    total = self.order.subtotal
    # unless @order.pst_rate == 0
    #   total += total * @order.pst_rate
    # end
    #
    # unless @order.gst_rate == 0
    #   total += total * @order.gst_rate
    # end
    #
    # unless @order.hst_rate == 0
    #   total += total * @order.hst_rate
    # end
  end

  private
    def set_order_status
      self.order_status_id = 1
    end

    def update_subtotal
      self[:subtotal] = subtotal
    end

end
