ActiveAdmin.register Shipment do
  permit_params :shipmentDate, :note, :customer_id, :employee_id
end
