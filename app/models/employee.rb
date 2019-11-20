class Employee < ApplicationRecord
  has_many :orders
  has_many :taxes
end
