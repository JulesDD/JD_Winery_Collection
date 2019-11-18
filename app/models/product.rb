class Product < ApplicationRecord
  belongs_to :variety

  validates :designation, :description, :price, :stockDate, presence: true
end
