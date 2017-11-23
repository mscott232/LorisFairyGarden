ActiveAdmin.register Customer do

  permit_params :name, :address, :city, :postal_code, :province_id, :email

end
