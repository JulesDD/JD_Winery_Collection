class Product < ApplicationRecord
  has_many :region_mades
  has_many :province_mades
  has_many :country_mades
  has_many :wineries
  has_many :varieties

  validates :designation, :description, :price, :stockDate, presence: true
end
