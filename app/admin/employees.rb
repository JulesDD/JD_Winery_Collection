ActiveAdmin.register Employee do
  permit_params :fullName, :emailAddress, :contactNumber, :streetAddress, :province, :postalCode, :username, :password, :taxes_id
end
