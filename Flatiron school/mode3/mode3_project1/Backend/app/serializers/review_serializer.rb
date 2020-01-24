class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :text, :author, :rating, :product_id
end
