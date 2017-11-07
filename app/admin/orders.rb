ActiveAdmin.register Order do

  permit_params :status, :customer_id, :pst_rate, :gst_rate, :hst_rate

end
