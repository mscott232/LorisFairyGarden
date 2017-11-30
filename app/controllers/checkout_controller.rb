class CheckoutController < ApplicationController
  before_action :update_order
  before_action :calculate_total

  def show
    @line_items = current_order.line_items
    @order = current_order

  end

  private
    def update_order
      @order = current_order
      @province = Province.where(:id => current_customer.province_id).first
      @order.update_attributes(:customer_id => current_customer.id, :pst_rate => @province.pst, :gst_rate => @province.gst, :hst_rate => @province.hst)
    end
    def calculate_total
      @order = current_order
      total = @order.subtotal
      unless @order.pst_rate == 0
        total += (total * @order.pst_rate).round(2)
      end

      unless @order.gst_rate == 0
        total += (total * @order.gst_rate).round(2)
      end

      unless @order.hst_rate == 0
        total += (total * @order.hst_rate).round(2)
      end

      @order.update_attribute(:total, total)
    end
end
