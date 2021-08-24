# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


ContactRequest.destroy_all
User.destroy_all

explorer_pawel = User.create!(first_name: "Pawel", last_name: "Lewanski", bio: "Hello, my name is Pawel. I come from Poland and I am a student in design. I will be in Nantes for the next year. I like football, let's meet!",
birth_date: "1999-02-20", gender: "Male", email: "pawel@example.com", password: "password", phone_number: "0606060606", role: "Explorer", languages: ["FR", "GB", "DE"],
hobbies: ["Football", "Plants", "Skateboard", "Piano", "Travel"], chosen_activities: ["Arts"])

explorer_dirk = User.create!(first_name: "Dirk", last_name: "Nowitzki", bio: "Hello, my name is Dirk. I come from Germany and I am a French letters student. I really like France and I hope staying here for a long time!. I look forward to metting you soon!",
birth_date: "1997-04-14", gender: "Male", email: "dirk@example.com", password: "password", phone_number: "0606060606", role: "Explorer", languages: ["DE", "GB"],
hobbies: ["Plants", "Football", "Skateboard", "Culture", "Travel"], chosen_activities: ["Sports"])

explorer_toby = User.create!(first_name: "Toby", last_name: "Johnson", bio: "Hello, my name is Toby. I come from England and I am a student. I have arrived in France for 3 months. I like football.",
birth_date: "2001-04-14", gender: "Male", email: "dirk@example.com", password: "password", phone_number: "0606060606", role: "Explorer", languages: ["RU", "GB"],
hobbies: ["Plants", "Piano", "Skateboard", "Culture", "Travel"], chosen_activities: ["Sports"])


guide_thomas = User.create!(first_name: "Thomas", last_name: "Petit", bio: "Hello, my name is Thomas. I work in Nantes since 2018. I like music, environment and asian food. Let's meet!",
birth_date: "1995-03-24", gender: "Male", email: "thomas@example.com", password: "password", phone_number: "+33601020304", role: "Guide", languages: ["FR", "GB", "DE"],
hobbies: ["Football", "Piano", "Plants", "Ecology"], chosen_activities: ["Arts", "Sports", "Hanging out"])

guide_julien = User.create!(first_name: "Julien", last_name: "Vincent", bio: "Hello everyone, my name is Julien. I study cinema. I like movies, environment and american cuisine. Let's meet!",
birth_date: "1999-08-08", gender: "Male", email: "julien@example.com", password: "password", phone_number: "+33601020304", role: "Guide", languages: ["FR", "GB", "DE"],
hobbies: ["Culture", "Ecology", "Beers", "Ecology"], chosen_activities: ["Arts", "Sports", "Hanging out"])

guide_aymeric = User.create!(first_name: "Aymeric", last_name: "Marcel", bio: "Hi, I am Aymeric. I am student in physical education. I like bodybuilding, cinema and beer. Let's meet to work out together!",
birth_date: "1990-02-14", gender: "Male", email: "aymeric@example.com", password: "password", phone_number: "+33601020304", role: "Guide", languages: ["FR", "GB", "CN"],
hobbies: ["Going out", "Rock", "Drawing", "Ecology"], chosen_activities: ["Arts", "Sports", "Hanging out"])

guide_laura = User.create!(first_name: "Laura", last_name: "Rodriguez", bio: "Hello everyone, my name is Laura. I study biology. I like basketball, surf and mexican cuisine. Let's meet!",
birth_date: "1996-01-16", gender: "Female", email: "laura@example.com", password: "password", phone_number: "+33601020304", role: "Guide", languages: ["FR", "GB", "ES"],
hobbies: ["Swimming", "Plants", "Culture", "Ecology"], chosen_activities: ["Arts", "Sports", "Hanging out"])

guide_marie = User.create!(first_name: "Marie", last_name: "Cotiello", bio: "Hi everyone, my name is Marie. I study general medecine. I like football, tourism and spanish cuisine. Let's meet!",
birth_date: "1997-06-10", gender: "Female", email: "marie@example.com", password: "password", phone_number: "+33601020304", role: "Guide", languages: ["FR", "GB", "ES"],
hobbies: ["Football", "Travel", "Food", "Ecology"], chosen_activities: ["Arts", "Sports", "Hanging out"])

guide_simon = User.create!(first_name: "Simon", last_name: "Gilles", bio: "Hello everyone, my name is Simon. I am student in arts. I like to go at museum, beer and paint. Let's meet!",
birth_date: "1999-11-05", gender: "Male", email: "simon@example.com", password: "password", phone_number: "+33601020304", role: "Guide", languages: ["FR", "GB", "RU"],
hobbies: ["Culture", "Beers", "Drawing", "Ecology"], chosen_activities: ["Sports", "Cinema", "Music"])

guide_wilfrid = User.create!(first_name: "Wilfrid", last_name: "Dampierre", bio: "Hi, I am Wilfrid. I study computer programing science. I like singing, travel and swimming. Let's meet!",
birth_date: "1991-01-11", gender: "Male", email: "wilfrid@example.com", password: "password", phone_number: "+33601020304", role: "Guide", languages: ["FR", "GB", "PT"],
hobbies: ["Singing", "Piano", "Swiming", "Ecology"], chosen_activities: ["Sports", "Cinema", "Music"])

guide_mohamed = User.create!(first_name: "Mohamed", last_name: "Abdaoui", bio: "Hi everyone, my name is Mohamed. I am student in science. I like basketball and French food. Let's meet!",
birth_date: "1992-01-24", gender: "Undefined", email: "mohamed@example.com", password: "password", phone_number: "+33601020304", role: "Guide", languages: ["FR", "GB", "RU"],
hobbies: ["Football", "Sneakers", "Beers", "Ecology"], chosen_activities: ["Sports", "Cinema", "Music"])

guide_nicolas = User.create!(first_name: "Nicolas", last_name: "Dupont", bio: "Hi everyone, my name is Nicolas. I study physical, education and sport. I like handball and another sports and play with musical instrument. Let's meet!",
birth_date: "1999-06-04", gender: "Undefined", email: "nicolas@example.com", password: "password", phone_number: "+33601020304", role: "Guide", languages: ["FR", "GB", "KR"],
hobbies: ["Football", "Sneakers", "Guitar", "Ecology"], chosen_activities: ["Sports", "Cinema", "Music"])

guide_james = User.create!(first_name: "James", last_name: "Robinson", bio: "Hello everyone, I am James. I am student in tourism. I like spy movies, sports and music mostly the rock and roll. Let's meet!",
birth_date: "2003-07-07", gender: "Male", email: "james@example.com", password: "password", phone_number: "+33601020304", role: "Guide", languages: ["FR", "GB", "DU"],
hobbies: ["Travel", "Beers", "Piano", "Ecology"], chosen_activities: ["Sports", "Cinema", "Music"])



ContactRequest.create!(guide: guide_thomas, explorer: explorer_pawel, activity: "Sports", status: "Pending")
ContactRequest.create!(guide: guide_thomas, explorer: explorer_dirk, activity: "Sports", status: "Accepted")
ContactRequest.create!(guide: guide_thomas, explorer: explorer_toby, activity: "Travel", status: "Declined")
