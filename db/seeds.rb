# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
# User.where(email: "test-test@test.com").destroy_all

# user = User.create!(email: "test-test@test.com", password: "password")

puts 'Creating 5 fake users...'
5.times do
  user = User.new(
    email: Faker::Internet.email,
    password: Faker::Number.number(10),
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    birth_date: Faker::Date.birthday(18, 65),
    city: Faker::Address.city,
    country: Faker::Address.country,
    about: Faker::Overwatch.quote,
    avatar: Faker::Avatar.image("my-own-slug", "50x50"),
    media: Faker::LoremPixel.image,
    banner: Faker::LoremPixel.image
  )

  user.save!
end
puts 'Finished!'
