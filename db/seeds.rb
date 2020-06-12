require "open-uri"

# file = URI.open('https://res.cloudinary.com/detomqnqx/image/upload/v1591267370/travel_2_gaoll5.jpg')
# file2 = URI.open('https://res.cloudinary.com/detomqnqx/image/upload/v1591267369/travel_1_bvemcd.jpg')
# activity.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

Message.destroy_all
Chatroom.destroy_all
Activity.destroy_all # if Rails.env.development?
ActivityCategory.destroy_all
Category.destroy_all # if Rails.env.development?
User.destroy_all # if Rails.env.development?
puts 'Delete data from database...'

# All users


file1a = URI.open('https://res.cloudinary.com/detomqnqx/image/upload/v1591781885/benny_ymotxw.jpg')
file2a = URI.open('https://res.cloudinary.com/detomqnqx/image/upload/v1591781938/creepy_dan_k4qoee.png')
file3a = URI.open('https://res.cloudinary.com/detomqnqx/image/upload/v1591781942/rachel_tge8vd.jpg')
file4a = URI.open('https://res.cloudinary.com/detomqnqx/image/upload/v1591781937/jonathan_f7sxbz.jpg')
file5a = URI.open('https://res.cloudinary.com/detomqnqx/image/upload/v1591781939/chan_qfvest.jpg')
file6a = URI.open('https://res.cloudinary.com/detomqnqx/image/upload/v1591781937/lohith_gwqfuq.jpg')
file7a = URI.open('https://res.cloudinary.com/detomqnqx/image/upload/v1591784940/PhilippIversen_z26wji.png')
user1 = User.create!(
  email: "benny@email.com",
  password: "secret",
  username: "Benny",
  first_name: "Ben",
  last_name: "Schmidt",
  language: "German",
  description: "I love spending all my free time outside in the nature. Surfing, Hiking, Running...You name it and I am in."
)
user1.photo.attach(io: file1a, filename: 'photo')

user2 = User.create!(
  email: "dan@email.com",
  password: "secret",
  username: "Dan",
  first_name: "Daniel",
  last_name: "Craemer",
  language: "English",
  description: "I love to discover places all over the world and meet cool people to share those special moments."
)
user2.photo.attach(io: file2a, filename: 'photo')

user3 = User.create!(
  email: "rachelb@email.com",
  password: "secret",
  username: "Rae-Rae",
  first_name: "Rachel",
  last_name: "Brown",
  language: "English",
  description: "My passion is to take photos while travelling. My favourite city is Paris. I've been there literally 100 times and go back there every year at least once. The Louvre and Eiffel Tower I visited a couple of times already but I always go back there."
)
user3.photo.attach(io: file3a, filename: 'photo')

user4 = User.create!(
  email: "jon@email.com",
  password: "secret",
  username: "Jonathan",
  first_name: "Jonathan",
  last_name: "Ackland",
  language: "English",
  description: "I plan a backpacking trip around the world and want to visit 10 countries in 3 month. Iceland, France, Germany, Vietnam, Thailand...I am a big fan of hiking but don't mind a little sightseeing."
)
user4.photo.attach(io: file4a, filename: 'photo')

user5 = User.create!(
  email: "chan@email.com",
  password: "secret",
  username: "Chan Ming",
  first_name: "Chan Ming",
  last_name: "Lai",
  language: "English",
  description: "I love traveling would do that all year long if possible."
)
user5.photo.attach(io: file5a, filename: 'photo')

user6 = User.create!(
  email: "loa@email.com",
  password: "secret",
  username: "Lohith",
  first_name: "Lohith",
  last_name: "Acharya",
  language: "English",
  description: "Can't wait for my next semester break to go traveling again. Currently looking for the next location where I can go surfing."
)
user6.photo.attach(io: file6a, filename: 'photo')

user7demo = User.create!(
  email: "philipp@email.com",
  password: "secret",
  username: "Phillycheezesteak91",
  first_name: "Philipp",
  last_name: "Ivers",
  language: "German",
  description: "Love traveling."
)
user7demo.photo.attach(io: file7a, filename: 'photo')
# setting up cloudinary pictures

file1 = URI.open('https://res.cloudinary.com/detomqnqx/image/upload/v1591294685/hawaii-surfing_weni1i.jpg')
file2 = URI.open('https://res.cloudinary.com/detomqnqx/image/upload/v1591294681/hawaii-vulcano_buom1a.jpg')
file3 = URI.open('https://res.cloudinary.com/detomqnqx/image/upload/v1591294682/hawaii-pearl-harbor_mk6l4r.jpg')
file4 = URI.open('https://res.cloudinary.com/detomqnqx/image/upload/v1591294683/paris-eiffel_n5lrme.jpg')
file5 = URI.open('https://res.cloudinary.com/detomqnqx/image/upload/v1591294685/paris-louvre_rguguo.jpg')
file6 = URI.open('https://res.cloudinary.com/detomqnqx/image/upload/v1591294674/bali-snorkeling_ahn9lf.jpg')
file7 = URI.open('https://res.cloudinary.com/detomqnqx/image/upload/v1591294681/bali-monkey_onk6pw.jpg')
file8 = URI.open('https://res.cloudinary.com/detomqnqx/image/upload/v1591294674/bali-mountain_sziezu.jpg')
file9 = URI.open('https://res.cloudinary.com/detomqnqx/image/upload/v1591294677/bali-surfing_gs1ndr.jpg')
file10 = URI.open('https://res.cloudinary.com/detomqnqx/image/upload/v1591294675/bali-beach_d1vkyv.jpg')
file11 = URI.open('https://res.cloudinary.com/detomqnqx/image/upload/v1591294683/bali.surfing-2_ndztqx.jpg')
file12 = URI.open('https://res.cloudinary.com/detomqnqx/image/upload/v1591879560/daniele-riggi-OTTfvhpbeTU-unsplash_u6zecy.jpg')
file13 = URI.open('https://res.cloudinary.com/detomqnqx/image/upload/v1591879798/joe-desousa-vxk-ghi-WZU-unsplash_dpe9jw.jpg')
file14 = URI.open('https://res.cloudinary.com/detomqnqx/image/upload/v1591956154/liana-mikah-wAFNWfZM6us-unsplash_i6fc5i.jpg')
file15 = URI.open('https://res.cloudinary.com/detomqnqx/image/upload/v1591956096/elle-hughes-rYEUdOG2ves-unsplash_jvm9kc.jpg')
file16 = URI.open('https://res.cloudinary.com/detomqnqx/image/upload/v1591956031/sergio-arze-eH9_kZ92LWQ-unsplash_1_f0jcc5.jpg')
file17 = URI.open('https://res.cloudinary.com/detomqnqx/image/upload/v1591956136/krists-luhaers-AtPWnYNDJnM-unsplash_devmcb.jpg')

# file = URI.open('https://res.cloudinary.com/detomqnqx/image/upload/v1591267370/travel_2_gaoll5.jpg')
# file2 = URI.open('https://res.cloudinary.com/detomqnqx/image/upload/v1591267369/travel_1_bvemcd.jpg')
sightseeing = Category.create!(
  name: "Sightseeing"
  )

exercise = Category.create!(
  name: "Exercise & Sports"
  )

outdoor = Category.create!(
  name: "Outdoor"
  )

arts = Category.create!(
  name: "Arts & Culture"
  )

nightlife = Category.create!(
  name: "Nightlife"
  )

adventure = Category.create!(
  name: "Adventure"
  )

food = Category.create!(
  name: "Food"
  )

music = Category.create!(
  name: "Music & Film"
  )

# All activities
activity1 = Activity.create!(
  name: "Surfing in Hawaii",
  description: "Let's go surfing at one of the locals favourite surfing spots Laniakea Beach. If we are lucky we will see some turtles as well!!",
  address: "Haleiwa, HI 96712, United States",
  start_date: "Thu, 10 Sep 2020",
  end_date: "Thu, 10 Sep 2020",
  user: user1
  )
activity1.photo.attach(io: file1, filename: 'photo')
activity1.categories << exercise

activity2 = Activity.create!(
  name: "Visit Diamond Head",
  description: "I am in Hawaii mainly to surf but also want to check out this vulcano on the other side of the island. Please contact me if you want to join. Not sure about the day yet but will be in Hawaii for 2 weeks.",
  address: "Honolulu, HI 96815, United States",
  start_date: "Fri, 11 Sep 2020",
  end_date: "Tue, 15 Sep 2020",
  user: user1
  )
activity2.photo.attach(io: file2, filename: 'photo')
activity2.categories << adventure

activity3 = Activity.create!(
  name: "Visit Pearl Harbor",
  description: "I am in Hawaii mainly to surf but why not also visit some historical sites as well. Please contact me if you want to join. Not sure about the day yet but will be in Hawaii for 2 weeks.",
  address: "Hawaii, USA",
  start_date: "Wed, 16 Sep 2020",
  end_date: "Thu, 17 Sep 2020",
  user: user1
  )
activity3.photo.attach(io: file3, filename: 'photo')
activity3.categories << adventure

activity4 = Activity.create!(
  name: "Eiffel Tower",
  description: "Next month I am back in Paris and I would like to visit the Eiffel Tower again to take some more pictures. If you enjoy photography as much as I do or just want to enjoy the great view get in touch. I am not super fixed on the day.",
  address: "5 Avenue Anatole France, 75007 Paris, France",
  start_date: "Thu, 01 Oct 2020",
  end_date: "Sat, 03 Oct 2020",
  user: user3
  )
activity4.photo.attach(io: file4, filename: 'photo')
activity4.categories << sightseeing

activity5 = Activity.create!(
  name: "Visit the Louvre",
  description: "Next month I am back in Paris and I would like to visit the Louvre again to see the Mona Lisa. If you want to join get in touch. I am not super fixed on the day.",
  address: "Rue de Rivoli, 75001 Paris, France",
  start_date: "Sat, 29 Aug 2020",
  end_date: "Sun, 30 Aug 2020",
  user: user3
  )
activity5.photo.attach(io: file5, filename: 'photo')
activity5.categories << sightseeing

activity6 = Activity.create!(
  name: "Snorkeling Blue Lagoon",
  description: "I am traveling to Bali in a month and want to go snorkeling if you are there around the same time, send me a message. Would love to do more activities together if you have some planned.",
  address: "Bali, Indonesia",
  start_date: "Tue, 20 Oct 2020",
  end_date: "Sun, 25 Oct 2020",
  user: user2
  )
activity6.photo.attach(io: file6, filename: 'photo')
activity6.categories << exercise

activity7 = Activity.create!(
  name: "Monkey Forest Sanctuary",
  description: "I am traveling to Bali and want to visit a couple of different places. Just send me a message and let me know in which ones you are interested and which dates would work for you.",
  address: "Bali 80571, Indonesia",
  start_date: "Fri, 16 Oct 2020",
  end_date: "Fri, 30 Oct 2020",
  user: user4
  )
activity7.photo.attach(io: file7, filename: 'photo')
activity7.categories << adventure

activity8 = Activity.create!(
  name: "Hike Mount Agung",
  description: "I am traveling to Bali and want to visit a couple of different places. Just send me a message and let me know in which ones you are interested and which dates would work for you.",
  address: "Bali, Indonesia",
  start_date: "Fri, 16 Oct 2020",
  end_date: "Fri, 30 Oct 2020",
  user: user4
  )
activity8.photo.attach(io: file8, filename: 'photo')
activity8.categories << outdoor

activity9 = Activity.create!(
  name: "Surfing Bali",
  description: "I am traveling to Bali mainly to surf but I am planning also a couple of different things. Just send me a message and let me know if you want to join me and which dates would work for you.",
  address: "Bali, Indonesia",
  start_date: "Fri, 16 Oct 2020",
  end_date: "Fri, 30 Oct 2020",
  user: user4
  )
activity9.photo.attach(io: file9, filename: 'photo')
activity9.categories << exercise

activity10 = Activity.create!(
  name: "Swimming, Snorkeling, Surfing",
  description: "I am traveling to Bali mainly to surf but I am planning also a couple of different things. Just send me a message and let me know if you want to join me and which dates would work for you.",
  address: "Bali, Indonesia",
  start_date: "Fri, 16 Oct 2020",
  end_date: "Fri, 30 Oct 2020",
  user: user5
  )
activity10.photo.attach(io: file10, filename: 'photo')
activity10.categories << exercise

activity11 = Activity.create!(
  name: "Secret Surfing Spot",
  description: "There are more than 60 surf spots in Bali and I tried a few of them. Then I found this great beach where mostly locals go. Balangan!!! I am not fixed on a specific date but will be around that place for 5 days.",
  address: "Jimbaran, South Kuta, Badung Regency, Bali, Indonesia",
  start_date: "Tue, 20 Oct 2020",
  end_date: "Sat, 24 Oct 2020",
  user: user6
  )
activity11.photo.attach(io: file11, filename: 'photo')
activity11.categories << exercise

activity12 = Activity.create!(
  name: "Moulin Rouge",
  description: "Let's go out and enjoy some drinks and music in Moulin Rouge.",
  address: "82 Boulevard de Clichy, 75018 Paris, France",
  start_date: "Tue, 21 Jul 2020",
  end_date: "Tue, 21 Jul 2020",
  user: user4
  )
activity12.photo.attach(io: file12, filename: 'photo')
activity12.categories << arts

activity13 = Activity.create!(
  name: "Boat Tour Seine",
  description: "I've always dreamed of being French, but my birth parents ultimately ruined that, didn't they! Help me achieve my annoying goal and join me on this raaaaad boat.",
  address: "Quai d'Orsay, 75000 Paris, France",
  start_date: "Thu, 25 Jun 2020",
  end_date: "Tue, 30 Jun 2020",
  user: user5
  )
activity13.photo.attach(io: file13, filename: 'photo')
activity13.categories << sightseeing

activity14 = Activity.create!(
  name: "Picnic in Brassai",
  description: "I love food. I love the outdoors. And, as a French entomologist, I love French bugs - especially when they're crawling all over my sammy. You know what that means. PICNIC TIME!",
  address: "46 Rue du Bac, 75007 Paris, France",
  start_date: "Mon, 29 Jun 2020",
  end_date: "Mon, 29 Jun 2020",
  user: user6
  )
activity14.photo.attach(io: file14, filename: 'photo')
activity14.categories << food

activity15 = Activity.create!(
  name: "Mama Needs Wine",
  description: "Christ, my kids are loud. How do other people do this? I can't run away - not yet. But soon. Until then, this Mom of 5 needs wine and she needs a lot. Let's brown-paper-bag it in the street like the old days.",
  address: "26 Avenue de Wagram, 75008 Paris, France",
  start_date: "Mon, 22 Jun 2020",
  end_date: "Tue, 30 Jun 2020",
  user: user3
  )
activity15.photo.attach(io: file15, filename: 'photo')
activity15.categories << food

activity16 = Activity.create!(
  name: "100 Croissants",
  description: "Hello, I am American. Drove my pickup all the way from Tennessee after having a big fight with my wife. Never had a croissant, but figured now was the time, yes sir. Let's start with 100 and go from there.",
  address: "86 Rue du Rocher, 75008 Paris, France",
  start_date: "Tue, 23 Jun 2020",
  end_date: "Wed, 24 Jun 2020",
  user: user4
  )
activity16.photo.attach(io: file16, filename: 'photo')
activity16.categories << food

activity17 = Activity.create!(
  name: "Depardieu v. Diesel",
  description: "Yooooo, you guys love Vinny 'D-Man' Diesel? Fast n Furious, homie?! Woof! You know I do! But check-it, my dumb school is making me watch some French movies. Laaaame. Come keep me company ya'll!",
  address: "1 Rue Balzac, 75008 Paris, France",
  start_date: "Sat, 29 Aug 2020",
  end_date: "Sun, 30 Aug 2020",
  user: user2
  )
activity17.photo.attach(io: file17, filename: 'photo')
activity17.categories << music

puts 'Data created'
puts "You now have #{User.count} users and #{Activity.count} activities and #{Category.count} categories."
