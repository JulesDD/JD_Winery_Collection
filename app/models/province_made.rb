class ProvinceMade < ApplicationRecord
  belongs_to :products
  
  validates :provinceMade, presence: true
end
