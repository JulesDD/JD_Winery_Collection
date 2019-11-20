# frozen_string_literal: true

ActiveAdmin.register Product do
  permit_params :designation, :description, :price, :stockDate, :amount, :image, :regionMade_id, :provinceMade_id, :countryMade_id, :winery_id, :variety_id, :image
end
