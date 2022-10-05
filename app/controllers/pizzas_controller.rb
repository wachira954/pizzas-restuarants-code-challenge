class PizzasController < ApplicationController
    def index
        pizzas = pizza.all
        render json: pizzas
    end
end
