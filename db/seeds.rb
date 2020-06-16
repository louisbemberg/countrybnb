# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#TIME TO SEED!
puts "1 - Cleaning the database"
Country.destroy_all
User.destroy_all
puts "3- Creating users"
user1 = User.create!(email:"david@gmail.com", first_name: "David", last_name:"Hernan", password:"1234567")
user2 = User.create!(email:"wolfgang@gmail.com", first_name: "wolfgang", last_name:"Alkier", password:"1234567")
user3 = User.create!(email:"ellyn@gmail.com", first_name: "Ellyn", last_name:"Bou", password:"1234567")

puts "2 - Creating countries"
Country.create!(name: "Spain", description: "A lovely placed where people wake up late and still need a siesta", price_p_day: 150, user_id:user1.id)
Country.create!(name: "France", description: "The food is nice, the people not so much.", price_p_day: 185, user_id:user2.id)
Country.create!(name: "Germany", description: "The people are nice but they don't have time for anything cause they're working", price_p_day: 210, user_id:user3.id)
Country.create!(name: "USA", description: "HELL YEA! MURICA!", price_p_day: 135, user_id:user2.id)
Country.create!(name: "Switzerland", description: "Don't bother, it's way too expensive", price_p_day: 785, user_id:user3.id)

puts "3 - Creating countries"
# TBD

puts "4 - Database seeded!"
