# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Micropost.destroy_all

puts 'deleted all users and Microposts'
puts "..."
User.create!(name:  "Toco Corocko",
             email: "luccakaiser@gmail.com",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: true)

User.create!(name:  "Alex",
             email: "alex@gmail.com",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: false)

puts "create 100 Faker-users"
puts "..."
99.times do |n|
  name  = Faker::HarryPotter.character
  email = "example-#{n+1}@sample-app.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
end

puts "create Microposts"
puts "..."

users = User.order(:created_at).take(6)
50.times do
  content = Faker::Lorem.sentence(5)
  users.each { |user| user.microposts.create!(content: content) }
end

puts 'Seed complete!'
