class ReviewsController < ApplicationController
  before_action :set_restaurant
  def index
    @reviews = @restaurant.reviews
  end

  def new
    @review = @restaurant.reviews.new
  end

  def create
    @review = @restaurant.reviews.new(review_params)
    if @review.save
      redirect_to restaurant_path,
      notice: 'Your review is logged!'
    else
      render :new
    end
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
