class RestaurantPizzasController < ApplicationController
    ActiveRecord::RecordInvalid, with: :render_unprocessable_entity

    def create
        rest_pizza = RestaurantPizza.create!(pizza_params)
        render json: RestaurantPizza.pizza, status: :created 

        
    end

    private

    def pizza_params
        params.permit(:price, :pizza_id, :restaurant_id)
        
    end
    def render_unprocessable_entity(invalid)
        render json: {errors: invalid.record.errors}, status: :unprocessable_entity
        
    end
end
