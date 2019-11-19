class Variety < ApplicationRecord
  belongs_to :product

  validates :variety_name, presence: true
end
