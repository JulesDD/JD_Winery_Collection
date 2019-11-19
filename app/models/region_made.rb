# frozen_string_literal: true

class RegionMade < ApplicationRecord
  has_many  :products

  validates :regionMade, presence: true
end
