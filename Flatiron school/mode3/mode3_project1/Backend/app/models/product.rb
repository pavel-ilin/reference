class Product < ApplicationRecord
  include ActionView::Helpers::NumberHelper
  belongs_to :category
  has_many :reviews

  validates :name, presence: true
  validates :description, presence: true
  validates :origin, presence: true
  validates :cost, presence: true
  validates :cost, numericality: {greater_than: 0}
  validates :category_id, presence: true

  def averageRating
    length = self.reviews.length
    summ = self.reviews.map {|review| review.rating}.sum
    self.update(average_rating: summ.to_f/length)
  end

end
