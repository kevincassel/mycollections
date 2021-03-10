# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Destroy all users"

User.destroy_all

puts "Destroy all shops"

Shop.destroy_all

puts "Create Users"

User.create!(first_name: "Pierre", last_name: "Quiroule", username: "Plouf", email: "papapa@gmail.com", password:"papapa")

puts "Create Shops"

Shop.create!(name: "Game", address: "74, Rue Faidherbe, 59800 Lille")
Shop.create!(name: "Micromania", address: "51 Avenue Willy Brandt, 59000 Lille")
Shop.create!(name: "Micromania", address: "52 Rue de Béthune, 59800 Lille")
Shop.create!(name: "Micromania", address: "130 Rue du Grand But Lomme, 59160 Lille")
Shop.create!(name: "Micromania", address: "46 Avenue de l'Avenir, 59650 Villeneuve-d'Ascq")

puts "Finished !"