# frozen_string_literal: true

class Shipment < ApplicationRecord
  belongs_to :customer
  belongs_to :employee
  has_many :orders

  validates :shipmentDate, :note, presence: true
end
