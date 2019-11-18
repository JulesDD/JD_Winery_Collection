# frozen_string_literal: true

class Payment < ApplicationRecord
  validates :paymentNo, :paymentType, presence: true
end
