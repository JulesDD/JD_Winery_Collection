# frozen_string_literal: true

class ProvinceMade < ApplicationRecord
  belongs_to :product

  validates :provinceMade, presence: true
end
