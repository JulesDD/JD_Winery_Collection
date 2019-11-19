# frozen_string_literal: true

class Order < ApplicationRecord
  has_many :customer
  has_many :employee
  has_many :product
  has_many :shipment
  has_many :taxes

  validates :orderDate, :orderQuantity, :subTotal, :isDeliver, :deliveryFee, :total, presence: true
end
