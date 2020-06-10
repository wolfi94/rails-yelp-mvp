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
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "chinese", phone_number: "0001"}
pizza_east = { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "chinese", phone_number: "0002" }
palace = { name: "Palace", address: "7 Boundary St, London E2 7JE", category: "chinese", phone_number: "0001"}
nara = { name: "nara", address: "56A Shoreditch High St, London E1 6PQ", category: "chinese", phone_number: "0002" }
wokin = { name: "wokin", address: "7 Boundary St, London E2 7JE", category: "chinese", phone_number: "0001"}

[dishoom, pizza_east,palace, nara, wokin].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
