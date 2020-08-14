# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Regenerating Your DataBase ..."
Review.destroy_all
puts "✅ All Reviews were successfully destroyed: #{Review.count} Reviews"
Dose.destroy_all
puts "✅ All Doses were successfully destroyed: #{Dose.count} Doses"
Ingredient.destroy_all
puts "✅ All Ingredients were successfully destroyed: #{Ingredient.count} Ingeredient"
Cocktail.destroy_all
puts "✅ All Cocktails were successfully destroyed: #{Cocktail.count} Cocktails"

puts "🍹🍸Creating 10 fake ingredients..."
  uri = open("https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list").read
  ingredient_array_of_hash = JSON.parse(uri)["drinks"]
  ingredients = ingredient_array_of_hash.first(10)
  ingredients.each do |ingredient_hash|
    puts ingredient_name = ingredient_hash.values
    Ingredient.create(name:ingredient_name)
  end
  puts "Finished! We created #{Ingredient.count} Ingredients"

  # path = File.join(File.dirname("https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"), "./seeds/cocktails.json")
  # records = JSON.parse(File.read(path))
  # records.each do |record|
  #   Cocktail.create!(record)
  # end
puts "Cocktails are seeded, CHEEEERSS! #{Ingredient.count} ingredients created"
puts "🍹🍸Creating 100 fake cocktails for hipsters..."
10.times do
  cocktail = Cocktail.new(
    name:    Faker::Name.name
  )
  cocktail.save!
end
puts "Finished! We created #{Cocktail.count} cocktails"
