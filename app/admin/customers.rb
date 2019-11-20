ActiveAdmin.register Customer do

  permit_params :fullName, :emailAddress, :contactNumber, :streetAddress, :province, :postalCode, :username, :password, :taxes_id

end
