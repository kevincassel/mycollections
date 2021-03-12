# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Destroy all users"

User.destroy_all

puts "Destroy all Video Games"

VideoGame.destroy_all

puts "Destroy all shops"

Shop.destroy_all

puts "Create Users"

User.create!(first_name: "Pierre", last_name: "Quiroule", username: "Plouf", email: "papapa@gmail.com", password:"papapa")

puts "Create Video Games"

VideoGame.create!(picture: "https://www.argusjeux.fr/medias/mario-kart-super-circuit-e58327.jpg" title:"Super Mario Kart", platform:"Game Boy Advance", category:"Good old times", editor:"Inteligent Systems", year: "2003", description:"Mario Kart: Super Circuit is a 2003 kart racing video game developed by Intelligent Systems and published by Nintendo for the Game Boy Advance. The game is the third installment in the Mario Kart series and the first for handhelds, following Super Mario Kart (1992) and Mario Kart 64 (1996). Super Circuit is a kart racing video game in which the player races in a kart against other teams in different courses. The game screen indicates the current standings in a race, the number of laps needed to finish and incoming weapons. Like in the previous installments, players can pick up item boxes to receive a randomly selected item and use it to impede the opposition and gain the advantage. Some items, such as shells and banana peels, allow the player to hit others to slow them down, while other items, such as the star power-up, render them temporarily invincible to attacks. This is the second Mario Kart game to include coins, which increases the engine power of the karts.")
VideoGame.create!(picture: "" title:"Age of Empires II: The Age of Kings", platform:"PC", category:"Good old times", editor:"Ensemble Studios", year: "2000", description:"Age of Empires II: The Age of Kings is a real-time strategy video game developed by Ensemble Studios and published by Microsoft. Released in 1999 for Microsoft Windows and Macintosh, it is the second game in the Age of Empires series. The Age of Kings is set in the Middle Ages and contains thirteen playable civilizations. Players aim to gather resources, which they use to build towns, create armies, and defeat their enemies. There are five historically based campaigns, which constrict the player to specialized and story-backed conditions.")
VideoGame.create!(picture: "" title:"Black", platform:"PlayStation 2", category:"Infiltration", editor:"Criterion Games", year: "1992", description:"Black is a first-person shooter video game developed by Criterion Games and published by Electronic Arts. It was released for the PlayStation 2 and Xbox in February 2006. The player assumes control of Jack Kellar, a black ops agent being interrogated about his previous missions involving a terrorist operation. Played from a first-person perspective, players confront enemies using firearms and grenades. The game is notable for its heavily stylized cinema-inspired action as well as its sound quality and focus on destructive effects during gameplay.")
VideoGame.create!(picture: "" title:"Ico", platform:"PlayStation 2", category:"Aesthetic", editor:"Japan Studio", year: "1999", description:"Ico is an action-adventure game developed by Japan Studio and Team Ico, and published by Sony Computer Entertainment, released for the PlayStation 2 video game console in 2001 and 2002 in various regions. It was designed and directed by Fumito Ueda, who wanted to create a minimalist game around a boy meets girl concept. Originally planned for the PlayStation, Ico took approximately four years to develop. The team employed a subtracting design approach to reduce elements of gameplay that interfered with the game's setting and story in order to create a high level of immersion.")
VideoGame.create!(picture: "" title:"Shadow of the Colossus", platform:"PlayStation 2", category:"Aesthetic", editor:"Japan Studio", year: "1996", description:"The game's storyline focuses on a young man named Wander who enters a forbidden land. Wander must travel across a vast expanse on horseback and defeat sixteen massive beings, known simply as colossi, in order to restore the life of a girl named Mono. The game is unusual within the action-adventure genre in that there are no towns or dungeons to explore, no characters with whom to interact, and no enemies to defeat other than the colossi.")

VideoGame.create!(picture: "" title:"", platform:"", category:"", editor:"", year: "", description:"")
VideoGame.create!(picture: "" title:"", platform:"", category:"", editor:"", year: "", description:"")
VideoGame.create!(picture: "" title:"", platform:"", category:"", editor:"", year: "", description:"")
VideoGame.create!(picture: "" title:"", platform:"", category:"", editor:"", year: "", description:"")
VideoGame.create!(picture: "" title:"", platform:"", category:"", editor:"", year: "", description:"")

VideoGame.create!(picture: "" title:"", platform:"", category:"", editor:"", year: "", description:"")
VideoGame.create!(picture: "" title:"", platform:"", category:"", editor:"", year: "", description:"")
VideoGame.create!(picture: "" title:"", platform:"", category:"", editor:"", year: "", description:"")
VideoGame.create!(picture: "" title:"", platform:"", category:"", editor:"", year: "", description:"")
VideoGame.create!(picture: "" title:"", platform:"", category:"", editor:"", year: "", description:"")

VideoGame.create!(picture: "" title:"", platform:"", category:"", editor:"", year: "", description:"")
VideoGame.create!(picture: "" title:"", platform:"", category:"", editor:"", year: "", description:"")
VideoGame.create!(picture: "" title:"", platform:"", category:"", editor:"", year: "", description:"")
VideoGame.create!(picture: "" title:"", platform:"", category:"", editor:"", year: "", description:"")
VideoGame.create!(picture: "" title:"", platform:"", category:"", editor:"", year: "", description:"")

VideoGame.create!(picture: "" title:"", platform:"", category:"", editor:"", year: "", description:"")
VideoGame.create!(picture: "" title:"", platform:"", category:"", editor:"", year: "", description:"")
VideoGame.create!(picture: "" title:"", platform:"", category:"", editor:"", year: "", description:"")
VideoGame.create!(picture: "" title:"", platform:"", category:"", editor:"", year: "", description:"")
VideoGame.create!(picture: "" title:"", platform:"", category:"", editor:"", year: "", description:"")

VideoGame.create!(picture: "" title:"", platform:"", category:"", editor:"", year: "", description:"")
VideoGame.create!(picture: "" title:"", platform:"", category:"", editor:"", year: "", description:"")
VideoGame.create!(picture: "" title:"", platform:"", category:"", editor:"", year: "", description:"")
VideoGame.create!(picture: "" title:"", platform:"", category:"", editor:"", year: "", description:"")
VideoGame.create!(picture: "" title:"", platform:"", category:"", editor:"", year: "", description:"")

puts "Create Shops"

Shop.create!(name: "Game", address: "74, Rue Faidherbe, 59800 Lille")
Shop.create!(name: "Micromania", address: "51 Avenue Willy Brandt, 59000 Lille")
Shop.create!(name: "Micromania", address: "52 Rue de Béthune, 59800 Lille")
Shop.create!(name: "Micromania", address: "130 Rue du Grand But Lomme, 59160 Lille")
Shop.create!(name: "Micromania", address: "46 Avenue de l'Avenir, 59650 Villeneuve-d'Ascq")

puts "Finished !"
