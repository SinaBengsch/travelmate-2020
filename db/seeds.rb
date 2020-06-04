require "open-uri"

# file = URI.open('https://res.cloudinary.com/detomqnqx/image/upload/v1591267370/travel_2_gaoll5.jpg')
# file2 = URI.open('https://res.cloudinary.com/detomqnqx/image/upload/v1591267369/travel_1_bvemcd.jpg')
# activity.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Activity.destroy_all # if Rails.env.development?
User.destroy_all # if Rails.env.development?
puts 'Delete data from database...'
user1 = User.create!(
  email: "benny@email.com",
  password: "secret",
  username: "Benny",
  first_name: "Ben",
  last_name: "Schmidt",
  language: "German",
  description: "I am a computer geek who loves spending all his free time out in the nature. Surfing, Hiking, Running...You name it and I am in."
)

user2 = User.create(
  email: "dan@email.com",
  password: "secret",
  username: "Dan",
  first_name: "Daniel",
  last_name: "Craemer",
  language: "English",
  description: "I love to discover places all over the world and meet cool people to share those special moments."
)

user3 = User.create(
  email: "rachelb@email.com",
  password: "secret",
  username: "rachelb",
  first_name: "Rachel",
  last_name: "Brown",
  language: "English",
  description: "My passion is to take photos while travelling. My favourite city is Paris. I've been there literally 100 times already."
)

file = URI.open('https://res.cloudinary.com/detomqnqx/image/upload/v1591267370/travel_2_gaoll5.jpg')
file2 = URI.open('https://res.cloudinary.com/detomqnqx/image/upload/v1591267369/travel_1_bvemcd.jpg')

activity1 = Activity.create!(
  name: "Surfing in Hawaii",
  description: "Let's go surfing together in one of the locals favourite surf spots Laniakea Beach. If we are lucky we will see some turtles as well!!",
  address: "Hawaii",
  start_date: "08-08-2020",
  end_date: "16-08-2020",
  user: user1
  )

  # activity1.photo.attach(io: file, filename: 'hawaii.jpg', content_type: 'image/jpg')

  activity1.photo.attach(io: file, filename: 'travel_1.jpg', content_type: 'image/jpg')
  # activity.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')


activity2 = Activity.create!(
  name: "Eiffel Tower in Paris",
  description: "We can check out the Eiffel Tower and climb the million stairs together.",
  address: "Paris",
  start_date: "01-10-2020",
  end_date: "01-10-2020",
  user: user3
  )

  # activity2.photo.attach(io: file2, filename: 'paris.jpg', content_type: 'image/jpg')

  activity2.photo.attach(io: file2, filename: 'travel_2.jpg', content_type: 'image/jpg')


puts 'Activities created'
puts "You now have #{User.count} users and #{Activity.count} activities."
