# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
User.where(email: "test-test@test.com").destroy_all

user = User.create!(email: "test-test@test.com", password: "password")

puts 'Creating 5 fake plans...'
5.times do
  user = User.new(
    title: Faker::Movie.quote,
    description: Faker::Lorem.paragraphs,
    user_id: user.id,
    end_time: nil
  )

  plan.save!
end
puts 'Finished!'
