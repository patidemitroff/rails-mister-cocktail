# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")
Ingredient.create(name: "strawberry")
Ingredient.create(name: "jabuticaba")
Ingredient.create(name: "salt")
Ingredient.create(name: "pupunha")
Ingredient.create(name: "watermellon")
Ingredient.create(name: "herb")
Ingredient.create(name: "marijuana")
Ingredient.create(name: "orange")

Cocktail.create(name: "Molotov")
Cocktail.create(name: "Sex on the Beach")


Dose.create(amount: "6cl", description: "mix for 6 seconds", ingredient_id: 1, cocktail_id: 1)




