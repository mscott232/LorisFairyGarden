ActiveAdmin.register Customer do

  permit_params :username, :password, :first_name, :last_name, :address, :city, :postal_code, :country, :province_id, :email

end
