# frozen_string_literal: true

class Winery < ApplicationRecord
  has_many :product

  validates :winery_name, presence: true
end
