Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  GET "restaurants", to: "restaurants#index" #A visitor can see the list of all restaurants.
  POST "restaurants", to: "restaurants#new" #A visitor can add a new restaurant, and be redirected to the show view of that new restaurant.
  GET "restaurants/:id", to: "restaurants#show" #A visitor can see the details of a restaurant, with all the reviews related to the restaurant.
#  GET "restaurants/38/reviews/new" #  A visitor can add a new review to a restaurant
#  POST "restaurants/38/reviews"
end
