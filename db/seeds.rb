# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(
  username: 'Joseph',
  email: 'yosept@gmail.com',
  password: '123lol',
  password_confirmation: '123lol'
)

100.times do |time|
  User.create(
    username: Faker::Name.name,
    email: "user-#{time}@gmail.com",
    password: '123lol',
    password_confirmation: '123lol'
  )
end

15.times do
  Event.create(
    creator_id: Random.rand(1..3),
    date: Faker::Date.between(from: 14.days.ago, to: 14.days.from_now),
    name: Faker::Name.name + "'s Birthday",
    description: Faker::Lorem.sentence(word_count: 6),
    image: "https://picsum.photos/id/#{Random.rand(1..300)}/437/226"
  )
end

100.times do |time|
  Invitation.create(
    user_id: Random.rand(1..100),
    sent_by: Random.rand(1..100),
    event_id: Random.rand(1..15)
  )
end