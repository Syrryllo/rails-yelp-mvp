class RestaurantsController < ActionController::Base

  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.create(restaurant_params)
    if @restaurant.valid?
      redirect_to restaurant_path(@restaurant)
    else
      render 'new'
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @review = Review.new

  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category)
  end

end
