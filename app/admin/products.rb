ActiveAdmin.register Product do
  permit_params :designation, :description, :price, :stockDate, :regionMade_id, :provinceMade_id, :countryMade_id, :winery_id, :variety_id
end
