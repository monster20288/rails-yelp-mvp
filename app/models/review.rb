class Review < ApplicationRecord
  # Review belong to one restaurant
  belongs_to :restaurant
  # Add validation for rating and content
  validates :rating, presence: true
  validates :rating, numericality: { only_integer: true }
  validates :content, presence: true
  # add Rating validation
  validates :rating, inclusion: { in: (0..5),
  message: "%{value} is not a valid rating" }
end
