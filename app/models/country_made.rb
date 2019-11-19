class CountryMade < ApplicationRecord
  belongs_to :product

  validates :countryMade, presence: true
end
