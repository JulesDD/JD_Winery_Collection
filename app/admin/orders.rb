ActiveAdmin.register Order do
  permit_params :orderDate, :orderQuantity, :subTotal, :isDeliver, :pst, :gst, :hst, :qst, :deliveryFee, :total, :customer_id, :employee_id, :product_id, :shipment_id
end
