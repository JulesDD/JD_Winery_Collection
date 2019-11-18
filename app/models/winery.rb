# frozen_string_literal: true

class Winery < ApplicationRecord
  validates :winery_name, presence: true
end
