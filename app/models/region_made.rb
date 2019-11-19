# frozen_string_literal: true

class RegionMade < ApplicationRecord
  belongs_to :product

  validates :regionMade, presence: true
end
