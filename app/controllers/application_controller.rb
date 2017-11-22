class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_order

  def current_order
    if !session[:order_id].nil?
<<<<<<< HEAD
      Order.find(session[:order_id])
    else
      Order.new
=======
      Order.where(:id => session[:order_id])
    else
      session[:order_id] = Order.new
>>>>>>> e43e9ae9966699640eab0718762e7f0f856aab4c
    end
  end
end
