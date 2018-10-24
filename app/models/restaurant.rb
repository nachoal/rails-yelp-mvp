# frozen_string_literal: true

# Restaurant model
class Restaurant < ApplicationRecord
  # A restaurant has a 1 to n relationship with reviews
  # And when a restaurant gets deleted, the reviews associated should get deleted too
  has_many :reviews, dependent: :destroy
  # A restaurant must be created with name, address and category too
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true
  # A restaurant should only have categories from within this array
  CATEGORY = %w[chinese italian japanese french belgian].freeze
  validates :category, inclusion:
  { in: CATEGORY, message: 'Must belong to a valid category' }
end
