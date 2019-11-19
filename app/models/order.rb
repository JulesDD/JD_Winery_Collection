# frozen_string_literal: true

class Order < ApplicationRecord
  has_many :customers
  has_many :employees
  has_many :products
  belongs_to :shipment
  has_many :taxes

  validates :orderDate, :orderQuantity, :subTotal, :isDeliver, :deliveryFee, :total, presence: true
end
