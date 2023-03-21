# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
 # movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
 # Character.create(name: "Luke", movie: movies.first)
r1 = Restaurant.create(name: "Sottocasa NYC",
    address: "298 Atlantic Ave, Brooklyn, NY 11201")
r2 = Restaurant.create(  name: "PizzArte",
    address: "69 W 55th St, New York, NY 10019")

p1 = Pizza.create( name: "Cheese",
    ingredients: "Dough, Tomato Sauce, Cheese")
p2 = Pizza.create(  name: "Pepperoni",
    ingredients: "Dough, Tomato Sauce, Cheese, Pepperoni")

rp1 = RestaurantPizza.create( price: 5,
    pizza_id: 1,
    restaurant_id: 1)

rp2 = RestaurantPizza.create( price: 12,
        pizza_id: 1,
        restaurant_id: 2)
 
        rp3 = RestaurantPizza.create( price: 8,
            pizza_id: 2,
            restaurant_id: 1)

