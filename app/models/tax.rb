# frozen_string_literal: true

class Tax < ApplicationRecord
  has_many :customers
  has_many :employees
end
