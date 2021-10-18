require 'faker'

User.destroy_all
ActiveRecord::Base.connection.execute("ALTER SEQUENCE users_id_seq RESTART WITH 1")

Booking.destroy_all
ActiveRecord::Base.connection.execute("ALTER SEQUENCE bookings_id_seq RESTART WITH 1")

Categorie.destroy_all
ActiveRecord::Base.connection.execute("ALTER SEQUENCE categories_id_seq RESTART WITH 1")

Location.destroy_all
ActiveRecord::Base.connection.execute("ALTER SEQUENCE locations_id_seq RESTART WITH 1")


categorie1 = Categorie.new(name: "Mariage")
categorie1.picture.attach(io: File.open("app/assets/images/cat1.jpg"), filename: 'cat.jpg', content_type: 'image/jpeg')
categorie1.save
categorie2 = Categorie.new(name: "Anniversaire")
categorie2.picture.attach(io: File.open("app/assets/images/cat2.jpg"), filename: 'cat.jpg', content_type: 'image/jpeg')
categorie2.save
categorie3 = Categorie.new(name: "Baptème")
categorie3.picture.attach(io: File.open("app/assets/images/cat3.jpg"), filename: 'cat.jpg', content_type: 'image/jpeg')
categorie3.save
puts "Les catégories sont créées"



location1 = Location.new(name: "Jardin d'Eden",
address: Faker::Address.street_address, 
zip_code: Faker::Address.zip_code, 
city: Faker::Address.city,
rooms: rand(1..10),
superficy: rand(100..350),
price: rand(850..5000),
description: "Elegant lieu pour fêter un mariage.", 
categorie: categorie1)
location1.picture.attach(io: File.open("app/assets/images/thum1.jpg"), filename: 'thum.jpg', content_type: 'image/jpeg')
location1.save! 

location2 = Location.new(name: "Le vieux Rocher", 
address: Faker::Address.street_address, 
zip_code: Faker::Address.zip_code, 
city: Faker::Address.city,
rooms: rand(1..10),
superficy: rand(100..350),
price: rand(850..5000),
description: "Charmante demeure sur la côte pour évenementiel.", 
categorie: categorie1)
location2.picture.attach(io: File.open("app/assets/images/thum2.jpg"), filename: 'thum.jpg', content_type: 'image/jpeg')
location2.save 

location3 = Location.new(name: "Palais à Monaco",
address: Faker::Address.street_address, 
zip_code: Faker::Address.zip_code, 
city: Faker::Address.city,
rooms: rand(1..10),
superficy: rand(100..350),
price: rand(850..5000),
description: "Palais pour mariages princiers et royaux.", 
categorie: categorie1)
location3.picture.attach(io: File.open("app/assets/images/thum3.jpg"), filename: 'thum.jpg', content_type: 'image/jpeg')
location3.save 

location4 = Location.new(name: "Vaste chalet breton", 
address: Faker::Address.street_address, 
zip_code: Faker::Address.zip_code, 
city: Faker::Address.city,
rooms: rand(1..10),
superficy: rand(100..350),
price: rand(850..5000),
description: "Célèbrez votre union près du littoral breton.", 
categorie: categorie1)
location4.picture.attach(io: File.open("app/assets/images/thum4.jpg"), filename: 'thum.jpg', content_type: 'image/jpeg')
location4.save 

location5 = Location.new(name: "L'hypnose", 
address: Faker::Address.street_address, 
zip_code: Faker::Address.zip_code, 
city: Faker::Address.city,
rooms: rand(1..10),
superficy: rand(100..350),
price: rand(850..5000),
description: "Elegant hôtel pour organiser un évènement.", 
categorie: categorie1)
location5.picture.attach(io: File.open("app/assets/images/thum5.jpg"), filename: 'thum.jpg', content_type: 'image/jpeg')
location5.save 

location6 = Location.new(name: "Pomme d'amour", 
address: Faker::Address.street_address, 
zip_code: Faker::Address.zip_code, 
city: Faker::Address.city,
rooms: rand(1..10),
superficy: rand(100..350),
price: rand(850..5000),
description: "Superbe demeure pour mariages glamours.", 
categorie: categorie1)
location6.picture.attach(io: File.open("app/assets/images/thum6.jpg"), filename: 'thum.jpg', content_type: 'image/jpeg')
location6.save 

location7 = Location.new(name: "Maisonnet Albâtre", 
address: Faker::Address.street_address, 
zip_code: Faker::Address.zip_code, 
city: Faker::Address.city,
rooms: rand(1..10),
superficy: rand(100..350),
price: rand(850..5000),
description: "Mariages buccoliques dans un cadre champêtre.", 
categorie: categorie1)
location7.picture.attach(io: File.open("app/assets/images/thum7.jpg"), filename: 'thum.jpg', content_type: 'image/jpeg')
location7.save 

location8 = Location.new(name: "Château soyeux", 
address: Faker::Address.street_address, 
zip_code: Faker::Address.zip_code, 
city: Faker::Address.city,
rooms: rand(1..10),
superficy: rand(100..350),
price: rand(850..5000),
description: "Ne ratez pas cet édifice surprenant.", 
categorie: categorie1)
location8.picture.attach(io: File.open("app/assets/images/thum8.jpg"), filename: 'thum.jpg', content_type: 'image/jpeg')
location8.save 

location9 = Location.new(name: "Villa champêtre", 
address: Faker::Address.street_address, 
zip_code: Faker::Address.zip_code, 
city: Faker::Address.city,
rooms: rand(1..10),
superficy: rand(100..350),
price: rand(850..5000),
description: "Une villa d'architecte conçue pour les grandes occasions.", 
categorie: categorie1)
location9.picture.attach(io: File.open("app/assets/images/thum9.jpg"), filename: 'thum.jpg', content_type: 'image/jpeg')
location9.save 

location10 = Location.new(name: "Le monde enchanté", 
address: Faker::Address.street_address, 
zip_code: Faker::Address.zip_code, 
city: Faker::Address.city,
rooms: rand(1..10),
superficy: rand(100..350),
price: rand(850..5000),
description: "Coin de paradis pour le jour J.", 
categorie: categorie1)
location10.picture.attach(io: File.open("app/assets/images/thum10.jpg"), filename: 'thum.jpg', content_type: 'image/jpeg')
location10.save 

location11 = Location.new(name: "Le jardin secret", 
address: Faker::Address.street_address, 
zip_code: Faker::Address.zip_code, 
city: Faker::Address.city,
rooms: rand(1..10),
superficy: rand(100..350),
price: rand(850..5000),
description: "Sompteux jardin pour mariages royaux.", 
categorie: categorie1)
location11.picture.attach(io: File.open("app/assets/images/thum11.jpg"), filename: 'thum.jpg', content_type: 'image/jpeg')
location11.save 

location12 = Location.new(name: "Songe d'une nuit d'été", 
address: Faker::Address.street_address, 
zip_code: Faker::Address.zip_code, 
city: Faker::Address.city,
rooms: rand(1..10),
superficy: rand(100..350),
price: rand(850..5000),
description: "Palais accueillant mariages et grandes réceptions.", 
categorie: categorie1)
location12.picture.attach(io: File.open("app/assets/images/thum12.jpg"), filename: 'thum.jpg', content_type: 'image/jpeg')
location12.save 


puts "Les salles de réception sont créées !"