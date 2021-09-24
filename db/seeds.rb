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

user1 = User.new(email: "mariebouvard2@outlook.com", password: "123456")
puts "l'utilisateur est créé"

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
puts "Les salles de réception sont créées !"

