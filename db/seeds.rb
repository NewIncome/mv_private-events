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

Event.create(
  creator_id: User.first.id,
  date: Time.now + 5.days,
  name: 'the big party',
  description: 'this is party so big, it describes itself'
)

Invitation.create(
  user_id: User.third.id,
  sent_by: User.second.id,
  event_id: Event.first.id
)