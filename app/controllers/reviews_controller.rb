class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    @review.restaurant_id = @restaurant.id
    if @review.save
      redirect_to @restaurant, notice: 'Review was successfully created.'
    else
      render :new
    end
  end

private
   def review_params
      params.require(:review).permit(:content, :rating)
    end
end
