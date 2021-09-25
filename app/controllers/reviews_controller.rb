class ReviewsController <  ActionController::Base

  def new
    @review = Review.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant
    @review.save
  end

private

end
