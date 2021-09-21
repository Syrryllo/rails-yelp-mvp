# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."

fauchon = { name: "Fauchon", address: "Madeleine", phone_number: '+33 1 42 52 13 12', category: 'french' }
frite_paradise = { name: "Frite Paradise", address: "Molenbeek", phone_number: '+32 12 42 45 65 12', category: 'belgian' }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: '+44 955 214 521', category: 'italian' }
blue_lotus =  { name: "Blue Lotus", address: "Nanjin Lu", phone_number: '+86 5646 6564 12', category: 'chinese' }
sushi_daily = { name: "Sushi Daily", address: "Tokyo Dreams Avenue", phone_number: '+25 4564564 3154', category: 'japanese' }

[fauchon, frite_paradise, pizza_east, blue_lotus, sushi_daily].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"