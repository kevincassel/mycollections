# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# for request:body , involved_companies.company.name
# for seed videogame, editor: game["involed_companies"]["company"]["name"]


require "open-uri"

def searchagame(query)
  require "uri"
  require "net/http"
  
  url = URI("https://api.igdb.com/v4/games")
  
  https = Net::HTTP.new(url.host, url.port)
  https.use_ssl = true
  
  request = Net::HTTP::Post.new(url)
  request["Client-ID"] = "60p43ul3st64mrthkneqpfofnevos4"
  request["Authorization"] = "Bearer 5jbpjxhwzus3hh29qt936qu93tb7ip"
  request["Content-Type"] = "text/plain"
  request["Cookie"] = "__cfduid=d6058770d0ed32c11d8e9b48fe090c0811615375495"
  request.body = "search \"#{query}\"; fields name, platforms.name, first_release_date, summary, genres.name, cover.url;\r\n\r\n"
  
  response = https.request(request)
  JSON.parse(response.read_body)
end

games_mgs = searchagame("Metal Gear Solid")
games_ff = searchagame("Final Fantasy")
games_ac = searchagame("Assassin's Creed")
games_cod = searchagame("Call Of Duty")
games_cb = searchagame("Crash Bandicoot")
games_castle = searchagame("Castlevania")

puts "Destroy all shops"

Shop.destroy_all

puts "Destroy all collections"

Collection.destroy_all

puts "Destroy all users"

User.destroy_all

puts "Destroy all Video Games"

VideoGame.destroy_all

puts "Create Users"


file = URI.open('https://avatars.githubusercontent.com/u/75837583?v=4')
user = User.new( first_name: "Pierre", last_name: "Quiroule", username: "Plouf", email: "papapa@gmail.com", password:"papapa")
user.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
user.save

puts "Create Video Games"

games_mgs.each do |game|
  VideoGame.create!(title: game["name"], platform: game["platforms"].first["name"], category: game["genres"].first["name"], description: game["summary"], picture: "https:#{game["cover"]["url"]}", year: game["first_release_date"])
end
games_ff.each do |game|
  VideoGame.create!(title: game["name"], platform: game["platforms"].first["name"], category: game["genres"].first["name"], description: game["summary"], picture: "https:#{game["cover"]["url"]}", year: game["first_release_date"])
end
games_ac.each do |game|
  VideoGame.create!(title: game["name"], platform: game["platforms"].first["name"], category: game["genres"].first["name"], description: game["summary"], picture: "https:#{game["cover"]["url"]}", year: game["first_release_date"])
end
games_cod.each do |game|
  VideoGame.create!(title: game["name"], platform: game["platforms"].first["name"], category: game["genres"].first["name"], description: game["summary"], picture: "https:#{game["cover"]["url"]}", year: game["first_release_date"])
end
games_cb.each do |game|
  VideoGame.create!(title: game["name"], platform: game["platforms"].first["name"], category: game["genres"].first["name"], description: game["summary"], picture: "https:#{game["cover"]["url"]}", year: game["first_release_date"])
end
games_castle.each do |game|
  VideoGame.create!(title: game["name"], platform: game["platforms"].first["name"], category: game["genres"].first["name"], description: game["summary"], picture: "https:#{game["cover"]["url"]}", year: game["first_release_date"])
end

puts "Create Shops"

Shop.create!(name: "Game", address: "74, Rue Faidherbe, 59800 Lille")
Shop.create!(name: "Micromania", address: "51 Avenue Willy Brandt, 59000 Lille")
Shop.create!(name: "Micromania", address: "52 Rue de Béthune, 59800 Lille")
Shop.create!(name: "Micromania", address: "130 Rue du Grand But Lomme, 59160 Lille")
Shop.create!(name: "Micromania", address: "46 Avenue de l'Avenir, 59650 Villeneuve-d'Ascq")

puts "Finished !"

