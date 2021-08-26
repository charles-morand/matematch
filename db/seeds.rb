# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Destroying seeds"

ContactRequest.destroy_all
User.destroy_all

puts "Seeds destroyed"

explorer_pawel = User.create!(first_name: "Pawel",
                              last_name: "Lewanski",
                              bio: "Hello, my name is Pawel. I come from Poland and I am a student in design. I will be in Nantes for the next year. I like football, let's meet!",
                              birth_date: "1999-02-20",
                              gender: "Male",
                              email: "pawel@example.com",
                              password: "password",
                              phone_number: "0606060606",
                              role: "Explorer",
                              languages: ["FR", "GB", "DE"],
                              hobbies: ["Football", "Plants", "Skateboard", "Piano", "Travel"],
                              chosen_activities: ["Arts"],
                              address: "Nantes")

explorer_pawel_file = File.open(Rails.root.join('db/seeds/user_avatars/explorer_pawel.jpg'))
explorer_pawel.photo.attach(io: explorer_pawel_file, filename: 'explorer_pawel.jpg', content_type: 'image/jpg')
explorer_pawel.save!

explorer_dirk = User.create!(first_name: "Dirk",
                             last_name: "Nowitzki",
                             bio: "Hello, my name is Dirk. I come from Germany and I am a French letters student. I really like France and I hope staying here for a long time!. I look forward to metting you soon!",
                             birth_date: "1997-04-14",
                             gender: "Male",
                             email: "dirk@example.com",
                             password: "password",
                             phone_number: "0606060606",
                             role: "Explorer",
                             languages: ["DE", "GB"],
                             hobbies: ["Plants", "Football", "Skateboard", "Culture", "Travel"],
                             chosen_activities: ["Sports"],
                             address: "Nantes")

explorer_dirk_file = File.open(Rails.root.join('db/seeds/user_avatars/explorer_dirk.jpg'))
explorer_dirk.photo.attach(io: explorer_dirk_file, filename: 'explorer_dirk.jpg', content_type: 'image/jpg')
explorer_dirk.save!

explorer_toby = User.create!(first_name: "Toby",
                             last_name: "Johnson",
                             bio: "Hello, my name is Toby. I come from England and I am a student. I have arrived in France for 3 months. I like football.",
                             birth_date: "2001-04-14",
                             gender: "Male",
                             email: "toby@example.com",
                             password: "password",
                             phone_number: "0606060606",
                             role: "Explorer",
                             languages: ["RU", "GB"],
                             hobbies: ["Plants", "Piano", "Skateboard", "Culture", "Travel"],
                             chosen_activities: ["Sports"],
                             address: "Nantes")

explorer_toby_file = File.open(Rails.root.join('db/seeds/user_avatars/explorer_toby.jpg'))
explorer_toby.photo.attach(io: explorer_toby_file, filename: 'explorer_toby.jpg', content_type: 'image/jpg')
explorer_toby.save!

puts "Explorers created"

guide_thomas = User.create!(first_name: "Thomas",
                            last_name: "Petit",
                            bio: "Hello, my name is Thomas. I work in Nantes since 2018. I like music, environment and asian food. Let's meet!",
                            birth_date: "1995-03-24",
                            gender: "Male",
                            email: "thomas@example.com",
                            password: "password",
                            phone_number: "+33601020304",
                            role: "Guide",
                            languages: ["FR", "GB", "DE"],
                            hobbies: ["Football", "Piano", "Plants", "Ecology"],
                            chosen_activities: ["Arts", "Sports", "Hanging out"],
                            address: "Nantes")

guide_thomas_file = File.open(Rails.root.join('db/seeds/user_avatars/guide_thomas.jpg'))
guide_thomas.photo.attach(io: guide_thomas_file, filename: 'guide_thomas.jpg', content_type: 'image/jpg')
guide_thomas.save!

guide_julien = User.create!(first_name: "Julien",
                            last_name: "Vincent",
                            bio: "Hello everyone, my name is Julien. I study cinema. I like movies, environment and american cuisine. Let's meet!",
                            birth_date: "1999-08-08",
                            gender: "Male",
                            email: "julien@example.com",
                            password: "password",
                            phone_number: "+33601020304",
                            role: "Guide",
                            languages: ["FR", "GB", "DE"],
                            hobbies: ["Culture", "Ecology", "Tastings", "Travel"],
                            chosen_activities: ["Arts", "Sports", "Hanging out"],
                            address: "Nantes")

guide_julien_file = File.open(Rails.root.join('db/seeds/user_avatars/guide_julien.jpg'))
guide_julien.photo.attach(io: guide_julien_file, filename: 'guide_julien.jpg', content_type: 'image/jpg')
guide_julien.save!

guide_aymeric = User.create!(first_name: "Aymeric",
                             last_name: "Marcel",
                             bio: "Hi, I am Aymeric. I am student in physical education. I like bodybuilding, cinema and beer. Let's meet to work out together!",
                             birth_date: "1990-02-14",
                             gender: "Male",
                             email: "aymeric@example.com",
                             password: "password",
                             phone_number: "+33601020304",
                             role: "Guide",
                             languages: ["FR", "GB", "CN"],
                             hobbies: ["Skateboard", "Rock", "Drawing", "Ecology"],
                             chosen_activities: ["Arts", "Sports", "Hanging out"],
                             address: "Nantes")

guide_aymeric_file = File.open(Rails.root.join('db/seeds/user_avatars/guide_aymeric.jpg'))
guide_aymeric.photo.attach(io: guide_aymeric_file, filename: 'guide_aymeric.jpg', content_type: 'image/jpg')
guide_aymeric.save!

guide_laura = User.create!(first_name: "Laura",
                           last_name: "Rodriguez",
                           bio: "Hello everyone, my name is Laura. I study biology. I like basketball, surf and mexican cuisine. Let's meet!",
                           birth_date: "1996-01-16",
                           gender: "Female",
                           email: "laura@example.com",
                           password: "password",
                           phone_number: "+33601020304",
                           role: "Guide",
                           languages: ["FR", "GB", "ES"],
                           hobbies: ["Swimming", "Plants", "Culture", "Ecology"],
                           chosen_activities: ["Arts", "Sports", "Hanging out"],
                           address: "Nantes")

guide_laura_file = File.open(Rails.root.join('db/seeds/user_avatars/guide_laura.jpg'))
guide_laura.photo.attach(io: guide_laura_file, filename: 'guide_laura.jpg', content_type: 'image/jpg')
guide_laura.save!

guide_marie = User.create!(first_name: "Marie",
                           last_name: "Cotiello",
                           bio: "Hi everyone, my name is Marie. I study general medecine. I like football, tourism and spanish cuisine. Let's meet!",
                           birth_date: "1997-06-10",
                           gender: "Female",
                           email: "marie@example.com",
                           password: "password",
                           phone_number: "+33601020304",
                           role: "Guide",
                           languages: ["FR", "GB", "ES"],
                           hobbies: ["Football", "Travel", "Cooking", "Ecology"],
                           chosen_activities: ["Arts", "Sports", "Hanging out"],
                           address: "Nantes")

guide_marie_file = File.open(Rails.root.join('db/seeds/user_avatars/guide_marie.jpg'))
guide_marie.photo.attach(io: guide_marie_file, filename: 'guide_marie.jpg', content_type: 'image/jpg')
guide_marie.save!

guide_simon = User.create!(first_name: "Simon",
                           last_name: "Gilles",
                           bio: "Hello everyone, my name is Simon. I am student in arts. I like to go at museum, beer and paint. Let's meet!",
                           birth_date: "1999-11-05",
                           gender: "Male",
                           email: "simon@example.com",
                           password: "password",
                           phone_number: "+33601020304",
                           role: "Guide",
                           languages: ["FR", "GB", "RU"],
                           hobbies: ["Culture", "Shopping", "Drawing", "Ecology"],
                           chosen_activities: ["Sports", "Cinema", "Music"],
                           address: "Nantes")

guide_simon_file = File.open(Rails.root.join('db/seeds/user_avatars/guide_simon.jpg'))
guide_simon.photo.attach(io: guide_simon_file, filename: 'guide_simon.jpg', content_type: 'image/jpg')
guide_simon.save!

guide_wilfrid = User.create!(first_name: "Wilfrid",
                             last_name: "Dampierre",
                             bio: "Hi, I am Wilfrid. I study computer programing science. I like singing, travel and swimming. Let's meet!",
                             birth_date: "1991-01-11",
                             gender: "Male",
                             email: "wilfrid@example.com",
                             password: "password",
                             phone_number: "+33601020304",
                             role: "Guide",
                             languages: ["FR", "GB", "PT"],
                             hobbies: ["Singing", "Piano", "Swimming", "Ecology"],
                             chosen_activities: ["Sports", "Cinema", "Music"],
                             address: "Nantes")

guide_wilfrid_file = File.open(Rails.root.join('db/seeds/user_avatars/guide_wilfrid.jpg'))
guide_wilfrid.photo.attach(io: guide_wilfrid_file, filename: 'guide_wilfrid.jpg', content_type: 'image/jpg')
guide_wilfrid.save!

guide_mohamed = User.create!(first_name: "Mohamed",
                             last_name: "Abdaoui",
                             bio: "Hi everyone, my name is Mohamed. I am student in science. I like basketball and French food. Let's meet!",
                             birth_date: "1992-01-24",
                             gender: "Undefined",
                             email: "mohamed@example.com",
                             password: "password",
                             phone_number: "+33601020304",
                             role: "Guide",
                             languages: ["FR", "GB", "RU"],
                             hobbies: ["Football", "Roller", "Singing", "Ecology"],
                             chosen_activities: ["Sports", "Cinema", "Music"],
                             address: "Nantes")

guide_mohamed_file = File.open(Rails.root.join('db/seeds/user_avatars/guide_mohamed.jpg'))
guide_mohamed.photo.attach(io: guide_mohamed_file, filename: 'guide_mohamed.jpg', content_type: 'image/jpg')
guide_mohamed.save!

guide_nicolas = User.create!(first_name: "Nicolas",
                             last_name: "Dupont",
                             bio: "Hi everyone, my name is Nicolas. I study physical, education and sport. I like handball and another sports and play with musical instrument. Let's meet!",
                             birth_date: "1999-06-04",
                             gender: "Undefined",
                             email: "nicolas@example.com",
                             password: "password",
                             phone_number: "+33601020304",
                             role: "Guide",
                             languages: ["FR", "GB", "KR"],
                             hobbies: ["Football", "DIY", "Guitar", "Ecology"],
                             chosen_activities: ["Sports", "Cinema", "Music"],
                             address: "Nantes")

guide_nicolas_file = File.open(Rails.root.join('db/seeds/user_avatars/guide_nicolas.jpg'))
guide_nicolas.photo.attach(io: guide_nicolas_file, filename: 'guide_nicolas.jpg', content_type: 'image/jpg')
guide_nicolas.save!

guide_james = User.create!(first_name: "James",
                           last_name: "Robinson",
                           bio: "Hello everyone, I am James. I am student in tourism. I like spy movies, sports and music mostly the rock and roll. Let's meet!",
                           birth_date: "2003-07-07",
                           gender: "Male",
                           email: "james@example.com",
                           password: "password",
                           phone_number: "+33601020304",
                           role: "Guide",
                           languages: ["FR", "GB", "DE"],
                           hobbies: ["Travel", "Culture", "Piano", "Ecology"],
                           chosen_activities: ["Sports", "Cinema", "Music"],
                           address: "Nantes")

guide_james_file = File.open(Rails.root.join('db/seeds/user_avatars/guide_james.jpg'))
guide_james.photo.attach(io: guide_james_file, filename: 'guide_james.jpg', content_type: 'image/jpg')
guide_james.save!

puts "Guides created"

ContactRequest.create(guide: guide_thomas, explorer: explorer_pawel, activity: 'Sports', status: 'Pending')
ContactRequest.create(guide: guide_thomas, explorer: explorer_dirk, activity: 'Sports', status: 'Accepted')
ContactRequest.create(guide: guide_thomas, explorer: explorer_toby, activity: 'Travel', status: 'Declined')

puts "ContactRequests created"
