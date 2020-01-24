class ProductSerializer < ActiveModel::Serializer
  include ActionView::Helpers::NumberHelper
  attributes :id, :name, :description, :image, :origin, :cost, :average_rating, :category_id, :price
  has_many :reviews

  def price
    number_to_currency(self.object.cost)
  end

end
