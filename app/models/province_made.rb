# frozen_string_literal: true

class ProvinceMade < ApplicationRecord
  has_many :product

  validates :provinceMade, presence: true
end
