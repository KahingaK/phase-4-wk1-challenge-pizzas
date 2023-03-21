class RestaurantsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    
    
    #route GET /restaurants
    def index
        restaurants = Restaurant.all
        render json: restaurants
        
    end

    #route GET /restaurants/:id
    def show
        restaurant = find_restaurant
        render json: restaurant, include: :pizzas
        
    end

    #route DELETE /restaurant/:id
    def destroy
        restaurant = find_restaurant
        restaurant.destroy
        head :no_content
        
    end

    private
    
    def find_restaurant
        Restaurant.find(params[:id])
        
    end

    def render_not_found_response
        render json: {error: "Restaurant not found"}, status: :not_found 
        
    end

end
