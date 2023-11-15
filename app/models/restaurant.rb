class Restaurant < ApplicationRecord
  # One Restaurant have many Review
  has_many :reviews, dependent: :destroy
  # Check Validation name , address, category
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true
  # specify category which only valid in category
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"],
  message: "%{value} is not a valid category" }
end
