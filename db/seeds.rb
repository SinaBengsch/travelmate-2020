# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

Activity.destroy_all # if Rails.env.development?
User.destroy_all # if Rails.env.development?
puts 'Delete data from database...'

# All users

user1 = User.create!(
  email: "benny@email.com",
  password: "secret",
  username: "Benny",
  first_name: "Ben",
  last_name: "Schmidt",
  language: "German",
  description: "I love spending all my free time outside in the nature. Surfing, Hiking, Running...You name it and I am in."
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
  username: "Rae-Rae",
  first_name: "Rachel",
  last_name: "Brown",
  language: "English",
  description: "My passion is to take photos while travelling. My favourite city is Paris. I've been there literally 100 times and go back there every year at least once. The Louvre and Eiffel Tower I visited a couple of times already but I always go back there."
)

user4 = User.create(
  email: "jon@email.com",
  password: "secret",
  username: "Jonathan",
  first_name: "Jonathan",
  last_name: "Ackland",
  language: "English",
  description: "I plan a backpacking trip around the world and want to visit 10 countries in 3 month. Iceland, France, Germany, Vietnam, Thailand...I am a big fan of hiking but don't mind a little sightseeing."
)

user5 = User.create(
  email: "chan@email.com",
  password: "secret",
  username: "Chan Ming",
  first_name: "Chan Ming",
  last_name: "Lai",
  language: "English",
  description: "I love traveling would do that all year long if possible."
)

user6 = User.create(
  email: "loa@email.com",
  password: "secret",
  username: "Lohith",
  first_name: "Lohith",
  last_name: "Acharya",
  language: "English",
  description: "Can't wait for my next semester break to go traveling again. Currently looking for the next location where I can go surfing."
)

user7demo = User.create(
  email: "philipp@email.com",
  password: "secret",
  username: "Phillycheezesteak91",
  first_name: "Philipp",
  last_name: "Ivers",
  language: "German",
  description: "Love traveling."
)
# setting up cloudinary pictures

# file1 = URI.open('')
# file2 = URI.open('')
# file3 = URI.open('')
# file4 = URI.open('')
# file5 = URI.open('')
# file6 = URI.open('')
# file7 = URI.open('')
# file8 = URI.open('')
# file9 = URI.open('')
# file10 = URI.open('')
# file11 = URI.open('')

# All activities

activity1 = Activity.create!(
  name: "Surfing in Hawaii",
  description: "Let's go surfing at one of the locals favourite surfing spots Laniakea Beach. If we are lucky we will see some turtles as well!!",
  address: "Hawaii",
  start_date: "08-08-2020",
  end_date: "22-08-2020",
  user: user1
  )
# activity1.photo.attach(io: file1, filename: 'photo')

activity2 = Activity.create(
  name: "Visit Diamond Head",
  description: "I am in Hawaii mainly to surf but also want to check out this vulcano on the other side of the island. Please contact me if you want to join. Not sure about the day yet but will be in Hawaii for 2 weeks.",
  address: "Hawaii",
  start_date: "08-08-2020",
  end_date: "22-08-2020",
  user: user1
  )
# activity2.photo.attach(io: file2, filename: 'photo')

activity3 = Activity.create(
  name: "Visit Pearl Harbor",
  description: "I am in Hawaii mainly to surf but why not also visit some historical sites as well. Please contact me if you want to join. Not sure about the day yet but will be in Hawaii for 2 weeks.",
  address: "Hawaii",
  start_date: "08-08-2020",
  end_date: "22-08-2020",
  user: user1
  )
# activity3.photo.attach(io: file3, filename: 'photo')

activity4 = Activity.create(
  name: "Eiffel Tower in Paris",
  description: "Next month I am back in Paris and I would like to visit the Eiffel Tower again to take some more pictures. If you enjoy photography as much as I do or just want to enjoy the great view get in touch. I am not super fixed on the day.",
  address: "Paris",
  start_date: "01-10-2020",
  end_date: "01-10-2020",
  user: user3
  )
# activity4.photo.attach(io: file4, filename: 'photo')

activity5 = Activity.create(
  name: "Visit the Louvre in Paris",
  description: "Next month I am back in Paris and I would like to visit the Louvre again to see the Mona Lisa. If you want to join get in touch. I am not super fixed on the day.",
  address: "Paris",
  start_date: "03-10-2020",
  end_date: "03-10-2020",
  user: user3
  )
# activity5.photo.attach(io: file5, filename: 'photo')

activity6 = Activity.create(
  name: "Snorkeling Blue Lagoon",
  description: "I am traveling to Bali in a month and want to go snorkeling if you are there around the same time, send me a message. Would love to do more activities together if you have some planned.",
  address: "Bali",
  start_date: "20-10-2020",
  end_date: "20-10-2020",
  user: user2
  )
# activity6.photo.attach(io: file6, filename: 'photo')

activity7 = Activity.create(
  name: "Monkey Forest Sanctuary",
  description: "I am traveling to Bali and want to visit a couple of different places. Just send me a message and let me know in which ones you are interested and which dates would work for you.",
  address: "Bali",
  start_date: "16-10-2020",
  end_date: "30-10-2020",
  user: user4
  )
# activity7.photo.attach(io: file7, filename: 'photo')

activity8 = Activity.create(
  name: "Hike Mount Agung",
  description: "I am traveling to Bali and want to visit a couple of different places. Just send me a message and let me know in which ones you are interested and which dates would work for you.",
  address: "Bali",
  start_date: "16-10-2020",
  end_date: "30-10-2020",
  user: user4
  )
# activity8.photo.attach(io: file8, filename: 'photo')

activity9 = Activity.create(
  name: "Surfing Bali",
  description: "I am traveling to Bali mainly to surf but I am planning also a couple of different things. Just send me a message and let me know if you want to join me and which dates would work for you.",
  address: "Bali",
  start_date: "16-10-2020",
  end_date: "30-10-2020",
  user: user4
  )
# activity9.photo.attach(io: file9, filename: 'photo')

activity10 = Activity.create(
  name: "Swimming, Snorkeling, Surfing",
  description: "I am traveling to Bali mainly to surf but I am planning also a couple of different things. Just send me a message and let me know if you want to join me and which dates would work for you.",
  address: "Bali",
  start_date: "16-10-2020",
  end_date: "30-10-2020",
  user: user5
  )
# activity10.photo.attach(io: file10, filename: 'photo')

activity11 = Activity.create(
  name: "Secret Surfing Spot",
  description: "There are more than 60 surf spots in Bali and I tried a few of them. Then I found this great beach where mostly locals go. Balangan!!! I am not fixed on a specific date but will be around that place for 5 days.",
  address: "Bali",
  start_date: "20-10-2020",
  end_date: "24-10-2020",
  user: user6
  )
# activity11.photo.attach(io: file11, filename: 'photo')

puts 'Activities created'
puts "You now have #{User.count} users and #{Activity.count} activities."
