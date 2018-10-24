class Review < ApplicationRecord
  # A review must have a parent restaurant
  belongs_to :restaurant, validate: true
  # A review must have content and rating when created
  validates :content, presence: true
  validates :rating, presence: true
  validates :rating, numericality: true
  # A review must have a rating only between one to five
  RATINGS = [0, 1, 2, 3, 4, 5]
  validates :rating, inclusion: { in: RATINGS, message: 'Must be between 0 and 5' }
end
