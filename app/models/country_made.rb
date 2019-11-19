class CountryMade < ApplicationRecord
  has_many :product

  validates :countryMade, presence: true
end
