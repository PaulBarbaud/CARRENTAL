# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Car.destroy_all
User.destroy_all
Booking.destroy_all

paul = User.create!(email: "paul@mail.com", password: "secret")
dominique = User.create!(email: "toreto@mail.com", password: "secret")

ferrari = Car.create!(brand: "Ferrari", model: "458 italia", address: "16 rue de la vitesse, maranello", price_per_day: 120, user: dominique, year_of_production: 2009)
alpine  = Car.create!(brand: "Alpine", model: "A110 S", address: "40 Av. de Breaute, 76885 Dieppe", price_per_day: 100, user: dominique, year_of_production: 2016)
porsche = Car.create!(brand: "Porsche", model: "911 GT3 touring", address: "Av. de la Pentecôte, 44800 Saint-Herblain", price_per_day: 130, user: dominique, year_of_production: 2017)
renault = Car.create!(brand: "Renault", model: "megane rs trophy r", address: "Qu Champ De Mars, 14 Rue Laënnec, 44000 Nantes", price_per_day: 70, user: dominique, year_of_production: 2020)
abarth  = Car.create!(brand: "Abarth", model: "595 competizione", address: "348 Rte de Vannes, 44700 Orvault", price_per_day: 80, user: dominique, year_of_production: 2016)

puts "database created"
