class ReviewsController < ApplicationController
    def index
        reviews = Review.all
        render json: reviews
    end

    def show
        review = Review.find(params[:id])
        render json: review
    end

    def create
        review = Review.create(review_params)
        product = Product.find(review_params[:product_id])
        product.averageRating
        render json: review
    end

    def destroy
      review = Review.find(params[:id])
      product = review.product
      review.destroy
      product.averageRating
    end

    private

    def review_params
        params.require(:review).permit(:text, :author, :rating, :product_id)
    end
end
