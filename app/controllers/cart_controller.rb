class CartController < ApplicationController
  def show
    @line_items = current_order.line_items
    @order = current_order
  end
end
