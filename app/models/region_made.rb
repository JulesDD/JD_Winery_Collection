class RegionMade < ApplicationRecord
  belongs_to :products
  
  validates :regionMade, presence: true
end
