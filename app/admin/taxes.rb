ActiveAdmin.register Tax do
  permit_params :pst, :gst, :qst, :hst
end
