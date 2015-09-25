class ReviewsController < ApplicationController
  before_filter :authenticate_user!, :only => [:create]  
  def create
  	@restaurant = Restaurant.find_by_id(params[:restaurant])
  	@review = @restaurant.reviews.new(review_params)
  	if @review.save
  	respond_with [@restaurant,@review]
  	end
  end
  def review_params
  	params.require(:restaurant).permit(:restaurant_id,:user,:rating,:comment).merge(:user => current_user.id,:restaurant => params[:restaurant])
  end
end