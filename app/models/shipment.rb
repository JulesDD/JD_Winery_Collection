# frozen_string_literal: true

class Shipment < ApplicationRecord
  belongs_to :customer
  belongs_to :employee
  belongs_to :order

  validates :shipmentDate, :note, presence: true
end
