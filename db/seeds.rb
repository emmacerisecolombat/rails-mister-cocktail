# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "🍹🍸Creating 100 fake ingredients..."
  uri = open("https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list").read
  ingredient_array_of_hash = JSON.parse(uri)["drinks"]
  ingredient_array_of_hash.each do |ingredient_hash|
    puts ingredient_name = ingredient_hash.values
    Ingredient.create(name:ingredient_name)
  end

  # path = File.join(File.dirname("https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"), "./seeds/cocktails.json")
  # records = JSON.parse(File.read(path))
  # records.each do |record|
  #   Cocktail.create!(record)
  # end
puts "Cocktails are seeded, CHEEEERSS! #{Ingredient.count} ingredients created"

