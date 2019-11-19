class Variety < ApplicationRecord
  has_many :product

  validates :variety_name, presence: true
end
