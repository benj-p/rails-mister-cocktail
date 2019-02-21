# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Cocktail.destroy_all
Dose.destroy_all
Ingredient.destroy_all

lemon = Ingredient.create(name: "lemon")
ice = Ingredient.create(name: "ice")
rhum = Ingredient.create(name: "rhum")
perrier = Ingredient.create(name: "perrier")
mint = Ingredient.create(name: "mint leaves")

mojito = Cocktail.create(name: "mojito")

Dose.create(description: "4cl", ingredient: rhum, cocktail: mojito)
Dose.create(description: "8cl", ingredient: perrier, cocktail: mojito)
Dose.create(description: "4 leaves", ingredient: mint, cocktail: mojito)
