# frozen_string_literal: true

ActiveAdmin.register Product do
  permit_params :designation, :description, :price, :stockDate, :regionMade_id, :provinceMade_id, :countryMade_id, :winery_id, :variety_id, :image

  form do |f|
    f.semantic_errors
    f.inputs
    f.inputs do
      f.input :image, as: :file
    end
    f.actions
  end
end
