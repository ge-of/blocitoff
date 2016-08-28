# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'

 # Create Users
 5.times do
   user = User.new(
     email:    Faker::Internet.email,
     password: Faker::Lorem.characters(10)
   )
   user.skip_confirmation!
   user.save!
 end
 users = User.all
 member = User.new(
  email:    "member@letsblocitoff.com",
  password: "123456789"
)
member.skip_confirmation!
member.save!

 5.times do
  Todo.create!(
   user: users.sample,
   title: Faker::Lorem.sentence,
   notes: Faker::Lorem.sentence
  )
 end
puts "#{User.count} users created"
puts "#{Item.count} todos created"
