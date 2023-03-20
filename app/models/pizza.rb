class Pizza < ApplicationRecord
    has_many :restaurant_pizzas
    has many :restaurants, through: :restaurant_pizzas
end
