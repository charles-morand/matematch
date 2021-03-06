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
                              bio: "I'm a Polish student and I just arrived in Nantes. Let's discover the area or play some music together.",
                              birth_date: "1997-10-24",
                              gender: "Male",
                              email: "pawel@example.com",
                              password: "password",
                              phone_number: "+33606060606",
                              role: "Explorer",
                              languages: ["PL", "GB", "FR"],
                              hobbies: ["Ecology", "Music", "Travel"],
                              chosen_activities: ["Arts"],
                              address: "Nantes, Pays-de-la-Loire, France")

explorer_pawel_file = File.open(Rails.root.join('db/seeds/user_avatars/explorer_pawel.jpg'))
explorer_pawel.photo.attach(io: explorer_pawel_file, filename: 'explorer_pawel.jpg', content_type: 'image/jpg')
explorer_pawel.save!

explorer_dirk = User.create!(first_name: "Dirk",
                             last_name: "Nowitzki",
                             bio: "Hello, my name is Dirk. I come from Germany and I am a French letters student. I really like France and I hope staying here for a long time!. I look forward to meeting you soon!",
                             birth_date: "1997-04-14",
                             gender: "Male",
                             email: "dirk@example.com",
                             password: "password",
                             phone_number: "+33606060606",
                             role: "Explorer",
                             languages: ["DE", "GB"],
                             hobbies: ["DIY", "Hiking", "Culture"],
                             chosen_activities: ["Sports"],
                             address: "Nantes, Pays-de-la-Loire, France")

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
                             phone_number: "+33606060606",
                             role: "Explorer",
                             languages: ["RU", "GB"],
                             hobbies: ["Surf", "Skateboard", "Theater"],
                             chosen_activities: ["Sports"],
                             address: "Nantes, Pays-de-la-Loire, France")

explorer_toby_file = File.open(Rails.root.join('db/seeds/user_avatars/explorer_toby.jpg'))
explorer_toby.photo.attach(io: explorer_toby_file, filename: 'explorer_toby.jpg', content_type: 'image/jpg')
explorer_toby.save!

puts "Explorers created"

guide_thomas = User.create!(first_name: "Thomas",
                            last_name: "Petit",
                            bio: "Hello, my name is Thomas. I work in Nantes since 2018. I like music, environment and asian food. Let's meet!",
                            birth_date: "1997-03-24",
                            gender: "Male",
                            email: "thomas@example.com",
                            password: "password",
                            phone_number: "+33606060606",
                            role: "Guide",
                            languages: ["FR", "GB", "DE"],
                            hobbies: ["Football", "Fitness", "Skateboard"],
                            chosen_activities: ["Arts", "Sports", "Hang out"],
                            address: "Nantes, Pays-de-la-Loire, France")

guide_thomas_file = File.open(Rails.root.join('db/seeds/user_avatars/guide_thomas.jpg'))
guide_thomas.photo.attach(io: guide_thomas_file, filename: 'guide_thomas.jpg', content_type: 'image/jpg')
guide_thomas.save!

guide_charles = User.create!(first_name: "Charles",
                            last_name: "Vincent",
                            bio: "Hi! I am a Ruby developper and looking for a job in Nantes. I like Asian culture, playing football and protecting the environment. Let's meet!",
                            birth_date: "1995-03-24",
                            gender: "Male",
                            email: "charles@example.com",
                            password: "password",
                            phone_number: "+33606060606",
                            role: "Guide",
                            languages: ["FR", "GB", "CN"],
                            hobbies: ["Travel", "Ecology", "Football"],
                            chosen_activities: ["Arts", "Sports", "Hang out"],
                            address: "Nantes, Pays-de-la-Loire, France")

guide_charles_file = File.open(Rails.root.join('db/seeds/user_avatars/guide_charles.jpg'))
guide_charles.photo.attach(io: guide_charles_file, filename: 'guide_charles.jpg', content_type: 'image/jpg')
guide_charles.save!

guide_aymeric = User.create!(first_name: "Aymeric",
                             last_name: "Marcel",
                             bio: "Hi, I am Aymeric. I am student in physical education. I like bodybuilding, cinema and beer. Let's meet to work out together!",
                             birth_date: "1990-02-14",
                             gender: "Male",
                             email: "aymeric@example.com",
                             password: "password",
                             phone_number: "+33606060606",
                             role: "Guide",
                             languages: ["FR", "GB", "CN"],
                             hobbies: ["Skateboard", "Music", "Ecology"],
                             chosen_activities: ["Arts", "Sports", "Hang out"],
                             address: "Nantes, Pays-de-la-Loire, France")

guide_aymeric_file = File.open(Rails.root.join('db/seeds/user_avatars/guide_aymeric.jpg'))
guide_aymeric.photo.attach(io: guide_aymeric_file, filename: 'guide_aymeric.jpg', content_type: 'image/jpg')
guide_aymeric.save!

guide_laura = User.create!(first_name: "Laura",
                           last_name: "Rodriguez",
                           bio: "Hello everyone, my name is Laura. I study biology. I like basketball, surf and mexican cuisine. Let's meet!",
                           birth_date: "1996-01-16",
                           gender: "Female",
                           email: "laura@example.com",
                           password: "password",
                           phone_number: "+33606060606",
                           role: "Guide",
                           languages: ["ES", "GB", "JP"],
                           hobbies: ["Cooking", "Cycling", "Tennis"],
                           chosen_activities: ["Arts", "Sports", "Hang out"],
                           address: "Nantes, Pays-de-la-Loire, France")

guide_laura_file = File.open(Rails.root.join('db/seeds/user_avatars/guide_laura.jpg'))
guide_laura.photo.attach(io: guide_laura_file, filename: 'guide_laura.jpg', content_type: 'image/jpg')
guide_laura.save!

guide_marie = User.create!(first_name: "Marie",
                           last_name: "Cotiello",
                           bio: "Hi everyone, my name is Marie. I study general medecine. I like football, tourism and spanish cuisine. Let's meet!",
                           birth_date: "1997-06-10",
                           gender: "Female",
                           email: "marie@example.com",
                           password: "password",
                           phone_number: "+33606060606",
                           role: "Guide",
                           languages: ["IT", "GB", "ES"],
                           hobbies: ["Football", "Basketball", "Travel"],
                           chosen_activities: ["Arts", "Sports", "Hang out"],
                           address: "Nantes, Pays-de-la-Loire, France")

guide_marie_file = File.open(Rails.root.join('db/seeds/user_avatars/guide_marie.jpg'))
guide_marie.photo.attach(io: guide_marie_file, filename: 'guide_marie.jpg', content_type: 'image/jpg')
guide_marie.save!

guide_simon = User.create!(first_name: "Simon",
                           last_name: "Gilles",
                           bio: "Hello everyone, my name is Simon. I am student in arts. I like to go at museum, beer and paint. Let's meet!",
                           birth_date: "1999-11-05",
                           gender: "Male",
                           email: "simon@example.com",
                           password: "password",
                           phone_number: "+33606060606",
                           role: "Guide",
                           languages: ["FR", "GB", "RU"],
                           hobbies: ["Travel", "Music", "Basketball"],
                           chosen_activities: ["Sports", "Music", "Arts"],
                           address: "Nantes, Pays-de-la-Loire, France")

guide_simon_file = File.open(Rails.root.join('db/seeds/user_avatars/guide_simon.jpg'))
guide_simon.photo.attach(io: guide_simon_file, filename: 'guide_simon.jpg', content_type: 'image/jpg')
guide_simon.save!

guide_wilfrid = User.create!(first_name: "Wilfrid",
                             last_name: "Dampierre",
                             bio: "Hi, I am Wilfrid. I study computer programing science. I like singing, travel and swimming. Let's meet!",
                             birth_date: "1991-01-11",
                             gender: "Male",
                             email: "wilfrid@example.com",
                             password: "password",
                             phone_number: "+33606060606",
                             role: "Guide",
                             languages: ["FR", "GB", "PT"],
                             hobbies: ["Music", "Surf", "Cooking"],
                             chosen_activities: ["Sports", "Cinema", "Arts"],
                             address: "Nantes, Pays-de-la-Loire, France")

guide_wilfrid_file = File.open(Rails.root.join('db/seeds/user_avatars/guide_wilfrid.jpg'))
guide_wilfrid.photo.attach(io: guide_wilfrid_file, filename: 'guide_wilfrid.jpg', content_type: 'image/jpg')
guide_wilfrid.save!

guide_mohamed = User.create!(first_name: "Mohamed",
                             last_name: "Abdaoui",
                             bio: "Hi everyone, my name is Mohamed. I am student in science. I like basketball and French food. Let's meet!",
                             birth_date: "1992-01-24",
                             gender: "Undefined",
                             email: "mohamed@example.com",
                             password: "password",
                             phone_number: "+33606060606",
                             role: "Guide",
                             languages: ["FR", "GB", "RU"],
                             hobbies: ["Skateboard", "Surf", "Theater"],
                             chosen_activities: ["Sports", "Cinema", "Music"],
                             address: "Nantes, Pays-de-la-Loire, France")

guide_mohamed_file = File.open(Rails.root.join('db/seeds/user_avatars/guide_mohamed.jpg'))
guide_mohamed.photo.attach(io: guide_mohamed_file, filename: 'guide_mohamed.jpg', content_type: 'image/jpg')
guide_mohamed.save!

guide_nicolas = User.create!(first_name: "Nicolas",
                             last_name: "Dupont",
                             bio: "Hi everyone, my name is Nicolas. I study physical, education and sport. I like handball and another sports and play with musical instrument. Let's meet!",
                             birth_date: "1999-06-04",
                             gender: "Undefined",
                             email: "nicolas@example.com",
                             password: "password",
                             phone_number: "+33606060606",
                             role: "Guide",
                             languages: ["FR", "GB", "KR"],
                             hobbies: ["Cooking", "DIY", "Music"],
                             chosen_activities: ["Cinema", "Music", "Arts"],
                             address: "Nantes, Pays-de-la-Loire, France")

guide_nicolas_file = File.open(Rails.root.join('db/seeds/user_avatars/guide_nicolas.jpg'))
guide_nicolas.photo.attach(io: guide_nicolas_file, filename: 'guide_nicolas.jpg', content_type: 'image/jpg')
guide_nicolas.save!

guide_james = User.create!(first_name: "James",
                           last_name: "Robinson",
                           bio: "Hello everyone, I am James. I am student in tourism. I like to travel to the ocean side and spend my day surfing. Let's meet!",
                           birth_date: "1999-07-07",
                           gender: "Male",
                           email: "james@example.com",
                           password: "password",
                           phone_number: "+33606060606",
                           role: "Guide",
                           languages: ["FR", "GB", "DE"],
                           hobbies: ["Travel", "Surf", "Cycling"],
                           chosen_activities: ["Sports", "Cinema", "Arts"],
                           address: "Nantes, Pays-de-la-Loire, France")

guide_james_file = File.open(Rails.root.join('db/seeds/user_avatars/guide_james.jpg'))
guide_james.photo.attach(io: guide_james_file, filename: 'guide_james.jpg', content_type: 'image/jpg')
guide_james.save!

puts "Guides created"

ContactRequest.create(guide: guide_thomas, explorer: explorer_pawel, activity: 'Sports', status: 'pending', created_at: "2021/08/28")
ContactRequest.create(guide: guide_marie, explorer: explorer_pawel, activity: 'Arts', status: 'Accepted', created_at: "2021/08/17")
ContactRequest.create(guide: guide_james, explorer: explorer_pawel, activity: 'Sports', status: 'Accepted', created_at: "2021/08/05")
ContactRequest.create(guide: guide_nicolas, explorer: explorer_pawel, activity: 'Cinema', status: 'Declined', created_at: "2021/08/23")


ContactRequest.create(guide: guide_thomas, explorer: explorer_dirk, activity: 'Sports', status: 'Accepted', created_at: "2021/08/30")
ContactRequest.create(guide: guide_thomas, explorer: explorer_toby, activity: 'Travel', status: 'pending', created_at: "2021/08/02")
ContactRequest.create(guide: guide_thomas, explorer: explorer_toby, activity: 'Hang out', status: 'pending', created_at: "2021/08/19")


puts "ContactRequests created"
