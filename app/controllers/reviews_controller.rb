class ReviewsController < ApplicationController

def new
  @restaurant = Restaurant.find(params[:restaurant_id])
  @review = Review.new
end

def create
  @restaurant = Restaurant.find(params[:restaurant_id])
  @review = Review.new(review_params)
  @review.update(restaurant_id: params[:restaurant_id])

  if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render "restaurants/show"
    end
end


private

def review_params
  params.require(:review).permit(:rating, :content, :restaurant_id)
end


end
