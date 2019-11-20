# frozen_string_literal: true

class Product < ApplicationRecord
  belongs_to :regionMade
  belongs_to :provinceMade
  belongs_to :countryMade
  belongs_to :winery
  belongs_to :variety

  has_one_attached :image

  validates :designation, :description, :price, :stockDate, presence: true
end
