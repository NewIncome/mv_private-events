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
    image: "https://picsum.photos/id/#{Random.rand(1..100)}/437/226?blur=5"
  )
end

def different_number(options = {})
  dif_num = Random.rand(options[:min]..options[:max])
  return dif_num if dif_num != options[:than]

  different_number(than: options[:than],min: options[:min],max: options[:max])
end

15.times do |party|
  Faker::Number.unique.clear
  Random.rand(5..20).times do |_time|
    invitee = Faker::Number.unique.between(from: 1, to: 100)
    invitor = different_number(than: invitee, min: 1, max: 100)
    Invitation.create(
      user_id: invitee,
      sent_by: invitor,
      event_id: party
    )
  end
end