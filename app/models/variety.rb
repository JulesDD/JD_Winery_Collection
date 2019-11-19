class Variety < ApplicationRecord
  belongs_to :products
  
  validates :variety_name, presence: true
end
