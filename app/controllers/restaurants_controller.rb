class RestaurantsController < ApplicationController
    
    #route GET /restaurants
    def index
        restaurants = Restaurant.all
        render json: restaurants
        
    end

    #route GET /restaurants/:id
    def show
        restaurant = find_restaurant

        
    end

    #route DELETE /restaurant/:id
    def destroy
        restaurant = find_restaurant
        
    end

    private
    
    def find_restaurant
        Restaurant.find(params[:id])
        
    end

end
