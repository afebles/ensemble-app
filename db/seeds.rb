


User.destroy_all


users = [
  {
    email: "christel@me.com"
    password:"123456"
    first_name: "Christel"
    last_name: "Heijmans"
    avatar:"https://scontent-ams3-1.xx.fbcdn.net/v/t1.0-9/14317373_1118333798261574_7280857368832622381_n.jpg?oh=a4746fbb0c2882f65c34fce25528f5a1&oe=5B0B459D"
    banner: nil
    city: Amsterdam
    country: Netherlands
    about: nil
    media: nil
    }
]

users.each { |user| User.create(user) }

# user.remote_avatar_url = Faker::Avatar.image("my-own-slug", "50x50")
#   user.remote_banner_url = Faker::Avatar.image("my-own-slug", "50x50")




# create_table "users", force: :cascade do |t|
#     t.string "email", default: "", null: false
#     t.string "encrypted_password", default: "", null: false
#     t.string "reset_password_token"
#     t.datetime "reset_password_sent_at"
#     t.datetime "remember_created_at"
#     t.integer "sign_in_count", default: 0, null: false
#     t.datetime "current_sign_in_at"
#     t.datetime "last_sign_in_at"
#     t.inet "current_sign_in_ip"
#     t.inet "last_sign_in_ip"
#     t.datetime "created_at", null: false
#     t.datetime "updated_at", null: false
#     t.string "first_name"
#     t.string "last_name"
#     t.date "birth_date"
#     t.string "city"
#     t.string "country"
#     t.string "about"
#     t.boolean "pro"
#     t.string "avatar"
#     t.string "media"
#     t.string "banner"
#     t.index ["email"], name: "index_users_on_email", unique: true
#     t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
#   end




























# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# require 'faker'
# # User.where(email: "test-test@test.com").destroy_all
# User.destroy_all
# # user = User.create!(email: "test-test@test.com", password: "password")

# puts 'Creating 5 fake users...'
# 5.times do
#   user = User.new(
#     email: Faker::Internet.email,
#     password: Faker::Number.number(10),
#     first_name: Faker::Name.first_name,
#     last_name: Faker::Name.last_name,
#     birth_date: Faker::Date.birthday(18, 65),
#     city: Faker::Address.city,
#     country: Faker::Address.country,
#     about: Faker::Overwatch.quote,
#     media: Faker::LoremPixel.image,
#   )
#   user.remote_avatar_url = Faker::Avatar.image("my-own-slug", "50x50")
#   user.remote_banner_url = Faker::Avatar.image("my-own-slug", "50x50")


#   user.save!
# end
# puts 'Finished!'
