class Customer < ApplicationRecord
  belongs_to :taxes
  belongs_to :orders
end
