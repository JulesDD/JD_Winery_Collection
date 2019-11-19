class CountryMade < ApplicationRecord
  belongs_to :products
  
  validates :countryMade, presence: true
end
