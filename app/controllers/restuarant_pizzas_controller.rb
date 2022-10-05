class RestuarantPizzasController < ApplicationController
    
    def create
        restaurant_pizza = RestaurantPizza.create!(restaurant_pizza_params)
        render json: restuarant, status: :created
    end

    private

    def restaurant_pizza_params
        params.permit(:pizza_id, :restaurant_id, :price)
    end

    def render_unprocessable_entity_response(exception)
        render json: {errors: exception.record.errors.full_messages}, status: :unprocessable_entity
    end
end
