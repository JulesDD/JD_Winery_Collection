# frozen_string_literal: true

class Winery < ApplicationRecord
  belongs_to :product

  validates :winery_name, presence: true
end
