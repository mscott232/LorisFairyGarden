ActiveAdmin.register Customer do

  permit_params :username, :first_name, :last_name, :address, :city, :postal_code, :province_id, :email

end
