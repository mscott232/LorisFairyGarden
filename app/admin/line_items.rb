ActiveAdmin.register LineItem do

  permit_params :product_id, :quantity, :unit_price, :total_price, :order_id

end
