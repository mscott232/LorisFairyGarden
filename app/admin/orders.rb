ActiveAdmin.register Order do

  permit_params :customer_id, :order_status_id, :pst_rate, :gst_rate, :hst_rate

end
