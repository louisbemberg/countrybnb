# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'

puts "1 - Cleaning the database"
Country.destroy_all
User.destroy_all

puts "2- Creating users"
user1 = User.create!(email:"pedro@gmail.com", first_name: "Pedro", last_name:"Sanchez", password:"1234567")
user2 = User.create!(email:"manumacron@gmail.com", first_name: "Emmanuel", last_name:"Macron", password:"1234567")
user3 = User.create!(email:"Kurz69@gmail.com", first_name: "Basti", last_name:"Kurz", password:"1234567")
user4 = User.create!(email:"louis.bemberg@gmail.com", first_name: "Louis", last_name:"B", password:"1234567")
user5 = User.create!(email:"donald.trump@gmail.com", first_name: "Donald", last_name:"Trump", password:"1234567")
user6 = User.create!(email:"Angie@gmail.com", first_name: "Angela", last_name:"Merkel", password:"1234567")
user7 = User.create!(email:"atomicbombz@gmail.com", first_name: "Jong-Un", last_name:"Kim", password:"1234567")

puts "3 - Creating Countries with Pictures"

puts "3.1 - Creating Spain..."
spain_picture = URI.open('https://images.unsplash.com/photo-1445265005361-ae273d6a1e16?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1951&q=80')
spain = Country.new(name: "Spain", address: "Madrid Center, Spain", description: "A lovely placed where people wake up late and still need a siesta. Weather is hot and beers are cold. Also has the greatest coding school of all time.", price_p_day: 150, user_id: user1.id)
spain.photo.attach(io: spain_picture, filename: 'spain.png', content_type: 'image/png')
spain.save

puts "3.2 - Creating France..."
france_picture = URI.open('https://images.unsplash.com/photo-1502602898657-3e91760cbb34?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1952&q=80')
france = Country.new(name: "France", address: "Paris Center, France",  description: "The food is nice, the people not so much. You'll eat the best baguette of your life, but at what cost?", price_p_day: 185, user_id:user2.id)
france.photo.attach(io: france_picture, filename: 'france.png', content_type: 'image/png')
france.save

puts "3.3 - Creating Austria..."
austria_picture = URI.open('https://images.unsplash.com/photo-1516550893923-42d28e5677af?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1052&q=80')
austria = Country.new(name: "Austria", address: "Vienna Center, Austria", description: "The center of the universe. Austria is to Germany like Coca-Cola is to Pepsi.", price_p_day: 150, user_id: user3.id)
austria.photo.attach(io: austria_picture, filename: 'austria.png', content_type: 'image/png')
austria.save

puts "3.3 - Creating Switzerland..."
switzerland_picture = URI.open('https://images.unsplash.com/photo-1506905925346-21bda4d32df4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80')
switzerland = Country.new(name: "Switzerland", address: "Bern Center, Switzerland", description: "This place is like Heaven on earth, but comfort comes at a price. Not so helpful during wars but nice chocolate. Every citizen has an assault rifle but bullets are illegal.", price_p_day: 785, user_id:user4.id)
switzerland.photo.attach(io: switzerland_picture, filename: 'switzerland.png', content_type: 'image/png')
switzerland.save

puts "3.4 - Creating USA..."
usa_picture = URI.open('https://images.unsplash.com/photo-1550850839-8dc894ed385a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1954&q=80')
usa = Country.new(name: "USA", address: "Washington D.C. Center, USA", description: "HELL YEA! MURICA! Really good at sports, startups, and tech. Currently leading the charts in olympic gold medals andCoronavirus infections, and undergoing a major software update on their police.rb files.", price_p_day: 135, user_id:user5.id)
usa.photo.attach(io: usa_picture, filename: 'switzerland.png', content_type: 'image/png')
usa.save

puts "3.5 - Creating Germany..."
germany_picture = URI.open('https://images.unsplash.com/photo-1449452198679-05c7fd30f416?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80')
germany = Country.new(name: "Germany", address: "Berlin Center, Germany", description: "Small, unimportant place next to Austria", price_p_day: 150, user_id: user6.id)
germany.photo.attach(io: germany_picture, filename: 'germany.png', content_type: 'image/png')
germany.save

puts "3.6 Creating North Korea..."
northkorea_picture = URI.open('https://images.unsplash.com/photo-1543325768-c2650cc0d8cf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80')
northkorea = Country.new(name: "North Korea", address: "Pyongyang, North Korea", description: "Atomic bombs & chill", price_p_day: 150, user_id: user7.id)
northkorea.photo.attach(io: northkorea_picture, filename: 'northkorea.png', content_type: 'image/png')
northkorea.save

puts "4 - Database seeded!"
