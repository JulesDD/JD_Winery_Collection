# frozen_string_literal: true

class Order < ApplicationRecord
  has_many :customers
  has_many :employees
  has_many :products
  has_many :shipments
  has_many :taxes

  belongs_to :customer
  belongs_to :employee
  belongs_to :product
  belongs_to :shipment
  belongs_to :taxes

  validates :orderDate, :orderQuantity, :subTotal, :isDeliver, :deliveryFee, :total, presence: true
end
