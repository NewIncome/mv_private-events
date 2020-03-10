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

User.create(
  username: 'Alfredo',
  email: 'alfredo@gmail.com',
  password: '123lol',
  password_confirmation: '123lol'
)

User.create(
  username: 'Benjamin',
  email: 'benjamin@gmail.com',
  password: '123lol',
  password_confirmation: '123lol'
)

15.times do
  Event.create(
    creator_id: Random.rand(1..3),
    date: Faker::Date.between(from: 7.days.from_now, to: 1.month.from_now),
    name: Faker::Name.name + "'s Birthday",
    description: Faker::Lorem.sentence(word_count: 6),
    image: "https://picsum.photos/id/#{Random.rand(1..300)}/437/226"
  )
end

Invitation.create(
  user_id: User.third.id,
  sent_by: User.second.id,
  event_id: Event.first.id
)