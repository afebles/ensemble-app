

Comment.destroy_all
User.destroy_all
Project.destroy_all



users = [
  {
    email: "christel@me.com",
    password: "123456",
    first_name: "Christel",
    last_name: "Heijmans",
    remote_avatar_url: "https://scontent-ams3-1.xx.fbcdn.net/v/t1.0-9/14317373_1118333798261574_7280857368832622381_n.jpg?oh=a4746fbb0c2882f65c34fce25528f5a1&oe=5B0B459D",
    remote_banner_url: "https://images.unsplash.com/photo-1507676184212-d03ab07a01bf?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=3a413a0b054159dd7840130c25e6dbdf&auto=format&fit=crop&w=2250&q=80",
    city: "Amsterdam",
    country: "Netherlands",
    level: "Advance",
    instrument: "Voice",
    genre: "Jazz/Soul",
    about: "I am a songwriter based in Amsterdam. I love writing songs as a way of expressing my feelings and the thoughts of people who inspire me. I write different genres of songs such as pop,rnb,soul and rock. I'm always taking inspiration from music that I love so I like to keep my writing style open , it makes my writing/songs more authentic.",
    media: "https://youtu.be/ObGlgJPCZj4"
    },
    {
    email: "kim@me.com",
    password: "123456",
    first_name: "Kim",
    last_name: "Vera",
    remote_avatar_url: "https://scontent-ams3-1.xx.fbcdn.net/v/t1.0-9/15578497_10211495685493882_8712048160046255154_n.jpg?oh=89b926dfad05b5ae9058b6f740a26361&oe=5AFF94A7",
    remote_banner_url: "https://images.unsplash.com/photo-1444623151656-030273ddb785?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=10ba9e2bb83ba7040f28251ab9731e07&auto=format&fit=crop&w=1650&q=80",
    city: "Amsterdam",
    country: "Netherlands",
    level: "Advance",
    instrument: "Guitar",
    genre: "Rumba",
    about: "Songwriter based in Amsterdam up for collaborations. I take my songwriting very seriously and can write in multiple styles for many genres but catalan rumba it is my favourite. Check out the examples I have uploaded of my previous work.",
    media: "https://www.youtube.com/watch?v=XNEtBo7RSxQ"
    },
    {
    email: "aysha@me.com",
    password: "123456",
    first_name: "Aysha",
    last_name: "De Groot",
    remote_avatar_url: "https://scontent-ams3-1.xx.fbcdn.net/v/t31.0-8/22181178_10208397286083548_8746333542426674364_o.jpg?oh=ccddc23502568726999b57487827f2ce&oe=5B38229E",
    remote_banner_url: "https://scontent-ams3-1.xx.fbcdn.net/v/t31.0-8/22254703_10208397285483533_4564635857569049176_o.jpg?oh=4a691846a80cf5a4927a9998aeab0e81&oe=5B48B656",
    city: "Amsterdam",
    country: "Netherlands",
    level: "Advance",
    instrument: "Voice",
    genre: "Rock",
    about: "Hey all! I am an independent artist working from Amsterdam. I work in composing musical scores and writing my own style music. I play piano, acoustic guitar, electric guitar, bass guitar, synthesizer and a vocalist. Thanks for reading, and don't be afraid to critique and message me!!",
    media: "https://www.youtube.com/watch?v=a_xmkCpVu2Y"
    },
    {
    email: "daniel@me.com",
    password: "123456",
    first_name: "Daniel",
    last_name: "Hoogerwerf",
    remote_avatar_url: "https://scontent-ams3-1.xx.fbcdn.net/v/t1.0-9/1426495_286186828173267_472867283_n.jpg?oh=d6f33e07604481174053cd6a7b860e8a&oe=5B3C4060",
    remote_banner_url: "https://images.unsplash.com/photo-1466428996289-fb355538da1b?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=3f4744c6b82bed131593900e0b7a316f&auto=format&fit=crop&w=1500&q=80",
    city: "Amsterdam",
    country: "Netherlands",
    level: "Master",
    instrument: "DJ",
    genre: "Drum and bass",
    about: "I am a DJ & producer. I love making music, and producing. The tunes on my sound cloud link were made at home. It is amazing what you can do with computers these days. I love all types of music, and have made many songs in different genres. I like also do ambient instrumentals, and have had some of my film scores in independent films. I want to make music which has a unique spin on it, and looks towards the future using brand new technology.",
    media: "https://www.youtube.com/watch?v=TIGi8m2ST6E"
    },
    {
    email: "marcel@me.com",
    password: "123456",
    first_name: "Marcel",
    last_name: "De Groot",
    remote_avatar_url: "https://scontent-ams3-1.xx.fbcdn.net/v/t31.0-8/823367_10201818089630961_1304615097_o.jpg?oh=af7f2357d4b2dafc4998a23fe95942cc&oe=5B39902D",
    remote_banner_url: "https://scontent-ams3-1.xx.fbcdn.net/v/t1.0-9/12963852_10208606007644669_5929580650303235105_n.jpg?oh=c31af63e091a783f5fc69cf3360c444c&oe=5B49E3F2",
    city: "Amsterdam",
    country: "Netherlands",
    level: "Advance",
    instrument: "Guitar",
    genre: "Country",
    about: "Marcel de Groot, playing guitar from the age of 10, starts his career as a radio promoter with several record companies. And however interesting it is to experience the music industry from the inside, the blood creeps and goes its own way, straight to the music.",
    media: "https://www.youtube.com/watch?v=LteWK4nc8-8"
    },
    {
    email: "davis@me.com",
    password: "123456",
    first_name: "Davis",
    last_name: "Lazdins",
    remote_avatar_url: "https://scontent-ams3-1.xx.fbcdn.net/v/t31.0-8/277926_475599525786226_527154238_o.jpg?oh=6314fc77b3804782250cea587a2a7ef3&oe=5B408F7A",
    remote_banner_url: "https://images.unsplash.com/photo-1462813277085-db5366eb347b?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=ce0bdae61302f1757f799042a0769e2e&auto=format&fit=crop&w=1500&q=80",
    city: "Amsterdam",
    country: "Netherlands",
    level: "Advance",
    instrument: "Piano",
    genre: "Blues",
    about: "Hey all! I am an independent artist working from Amsterdam. I work in composing musical scores and writing my own style music. I play piano, acoustic guitar, electric guitar, bass guitar, synthesizer and a vocalist. Thanks for reading, and don't be afraid to critique and message me!!",
    media: "https://youtu.be/ObGlgJPCZj4"
    },
    {
    email: "almu@me.com",
    password: "123456",
    first_name: "Almu",
    last_name: "Vera",
    remote_avatar_url: "https://scontent-ams3-1.xx.fbcdn.net/v/t1.0-9/22310154_10214843123861334_1480897199619719968_n.jpg?oh=870daffea7b8b763dd71ccad47b28af1&oe=5B403739",
    remote_banner_url: "https://images.unsplash.com/photo-1475744214834-0cb9be6eb226?ixlib=rb-0.3.5&s=e880a52ea47e52eca9df280854f04606&auto=format&fit=crop&w=1500&q=80",
    city: "Amsterdam",
    country: "Netherlands",
    level: "Advance",
    instrument: "Accordion",
    genre: "Polka",
    about: "I am a charismatic, spontaneous and direct Polka artist who has set out to create music with a unique attitude, an emotional feel and an upbeat twist.",
    media: "https://www.youtube.com/watch?v=Ozw1Y_K8LzQ"
    },
    {
    email: "cristina@me.com",
    password: "123456",
    first_name: "Cristina",
    last_name: "Miranda",
    remote_avatar_url: "http://theludicrous.info/wp-content/uploads/2015/10/Illustrator.jpg",
    remote_banner_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyEpf7W2vR-4XseXxEdpKQX0Ly_6XVA2t_HeBaYSOUS2Ju5QQzcw",
    city: "Amsterdam",
    country: "Netherlands",
    level: "Advance",
    instrument: "Percusion",
    genre: "Latin",
    about: "Hey all! I am an independent artist working from Amsterdam. I work in composing musical scores and writing my own style music. I play piano, acoustic guitar, electric guitar, bass guitar, synthesizer and a vocalist. Thanks for reading, and don't be afraid to critique and message me!!",
    media: "https://youtu.be/ObGlgJPCZj4"
    },
    {
    email: "angel@me.com",
    password: "123456",
    first_name: "Angel",
    last_name: "Jolly",
    remote_avatar_url: "https://www.rd.com/wp-content/uploads/2017/03/02-People-Share-the-Random-Act-of-Kindness-That-Changed-Their-Life-Fatima-M-Woods-380x254.jpg",
    remote_banner_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpCOzXFFp5VF6l8B4hj46J8RxZn_zOm3-XbPrfpFaGhyMQkFM1",
    city: "Amsterdam",
    country: "Netherlands",
    level: "Advance",
    instrument: "Flute",
    genre: "Beatbox",
    about: "Hey all! I am an independent artist working from Amsterdam. I work in composing musical scores and writing my own style music. I play piano, acoustic guitar, electric guitar, bass guitar, synthesizer and a vocalist. Thanks for reading, and don't be afraid to critique and message me!!",
    media: "https://youtu.be/ObGlgJPCZj4"
    },
    {
    email: "eve@me.com",
    password: "123456",
    first_name: "Eve",
    last_name: "Ning",
    remote_avatar_url: "https://as01.epimg.net/buenavida/imagenes/2017/01/16/portada/1484585722_275704_1484605067_noticia_normal.jpg",
    remote_banner_url: "https://orig00.deviantart.net/2106/f/2012/329/0/e/untitled_drawing_by_walktheinch-d5m49xe.png",
    city: "Amsterdam",
    country: "Netherlands",
    level: "Advance",
    instrument: "Guitar",
    genre: "Cucumba",
    about: "Doesn't really matter to me. Any way the wind blows. There's no reason for living with a broken heart. Is this the real life?.
     Inside my heart is breaking. I need no sympathy.",
    media: "https://youtu.be/ObGlgJPCZj4"
    },
    {
    email: "aron@me.com",
    password: "123456",
    first_name: "Aron",
    last_name: "Febles",
    remote_avatar_url: "https://scontent-ams3-1.xx.fbcdn.net/v/t1.0-9/15037266_1420873604607496_2343180963636412242_n.jpg?oh=e19abdc618b9f96ff32319b3c4c9a31e&oe=5B07B66E",
    remote_banner_url: "https://orig00.deviantart.net/2106/f/2012/329/0/e/untitled_drawing_by_walktheinch-d5m49xe.png",
    city: "Amsterdam",
    country: "Netherlands",
    level: "Advance",
    instrument: "Drums",
    genre: "Cucumba",
    about: "I'm working as a session/freelance drummer doing both remote sessions from my own studio studio as well as doing live gigs and recording sessions wherever I'm needed. My sound could be described as groove oriented with a good pocket.",
    media: "https://youtu.be/ObGlgJPCZj4"
    }
]

users.each { |user| User.create(user) }


# projects = [
#   {
#     email: "christel@me.com",
#     password: "123456",
#     first_name: "Christel",
#     last_name: "Heijmans",
#     remote_avatar_url: "https://scontent-ams3-1.xx.fbcdn.net/v/t1.0-9/14317373_1118333798261574_7280857368832622381_n.jpg?oh=a4746fbb0c2882f65c34fce25528f5a1&oe=5B0B459D",
#     remote_banner_url: "https://unsplash.com/photos/Gi6-m_t_W-E",
#     city: "Amsterdam",
#     country: "Netherlands",
#     level: "Advance",
#     instrument: "Voice",
#     genre: "Jazz/Soul",
#     about: "Raoul Michel begon ooit als gitarist, maar uiteindelijk nam de drang om eigen liedjes te schrijven de overhand en raakte hij verslaafd aan songwriting.
# Met voorbeelden als Damien Rice, John Mayer en Jimi Hendrix, heeft Raoul een repertoire opgebouwd, waarin hij zich uitleeft op de gitaar en zingt vanuit z’n hart.",
#     media: "https://youtu.be/ObGlgJPCZj4"
#     }
#     ]

#     projects.each { |project| Project.create(project) }



print "Your seed have been created"

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
#     t.string "level"
#     t.string "instrument"
#     t.date "genre"
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
