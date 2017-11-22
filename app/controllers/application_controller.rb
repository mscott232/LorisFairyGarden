class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_order

  def current_order
    if !session[:order_id].nil?
      Order.where(:id => session[:order_id])
    else
      session[:order_id] = Order.new
    end
  end
end
