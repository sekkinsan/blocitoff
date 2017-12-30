# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

include Faker

#create users

5.times do
  user = User.create!(
    email: Faker::Internet.email,
    password: 'password'
  )
end
users = User.all

50.times do
  item = Item.create!(
    user: users.sample,
    name: Faker::Lorem.sentence
  )
end

user = User.create!(
  email: "jacob.yun429@gmail.com",
  password: "password"
)

puts "Seed finished"
puts "#{User.count} users created."
puts "#{Item.count} items created."
