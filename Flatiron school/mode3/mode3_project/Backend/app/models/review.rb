class Review < ApplicationRecord
  belongs_to :product

  validates :text, presence: true
  validates :author, presence: true
  validates :rating, presence: true
  validates :rating, numericality: {greater_than: 0, less_than_or_equal_to: 5}
end
