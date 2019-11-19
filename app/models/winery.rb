# frozen_string_literal: true

class Winery < ApplicationRecord
  belongs_to :products
  
  validates :winery_name, presence: true
end
