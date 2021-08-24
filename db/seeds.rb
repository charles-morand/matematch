# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 2 Explorers
explorer_pawel = User.create!(first_name: "Pawel", last_name:"Lewanski" bio:"Hello, my name is Pawel. I come from Poland and I am student. I have arrived in France for 1 month. I like football",
birth_date: "2000-02-20", gender: "Male", email: "pawel@exemple.com", password: "password", phone_number: "0606060606", role: "Explorer", languages: ["FR", "EN", "DE"],
hobbies: ["Beers", "Football", "Skateboard", "Culture", "Travel"], chosen_activities: ["Arts", "Sports", "Hanging out"])

explorer_dirk = User.create!(first_name: "Dirk", last_name:"Nowitzki" bio:"Hello, my name is Dirk. I come from Germany and I am student. I have arrived in France for 1 month. I like basketball. ",
birth_date: "2000-04-14", gender: "Male", email: "dirk@ewemple.com", password: "password", phone_number: "0606060606", role: "Explorer", languages: ["DE", "EN"],
hobbies: ["Beers", "Basketball", "Skateboard", "Culture", "Travel"], chosen_activities: ["Sports", "Cinema", "Music"])


# 10 Guides
guide_jakub = User.create!(first_name: "Jakub", last_name:"Johnson" bio:"Hello, my name is Jakub. I am a cooking student. I like music, environment and asian cuisine. Let's meet",
birth_date: "2000-03-23", gender: "Male", email: "jakub@exemple.com", password: "password", phone_number: "0606060606", role: "Guide", languages: ["FR", "EN", "DE"],
hobbies: ["Football", "Rock", "Beers"]

guide_paul = User.create!(first_name: "Paul", last_name:"Walker" bio:"Hello everyone, my name is Paul. I study cinema. I like movies, environment and american cuisine. Let's meet",
birth_date: "2000-08-08", gender: "Male", email: "paul@exemple.com", password: "password", phone_number: "0606060606", role: "Guide", languages: ["FR", "EN", "DE"],
hobbies: ["Culture", "Ecology", "Beers"]

guide_sylvester = User.create!(first_name: "Sylvester", last_name:"Stallone" bio:"Hi, I am Sylvester. I am student in physical, education and sport. I like bodybuilding, cinema and beer. Let's meet",
birth_date: "2000-02-14", gender: "Male", email: "sylvester@exemple.com", password: "password", phone_number: "0606060606", role: "Guide", languages: ["FR", "EN", "CH"],
hobbies: ["Going out", "Rock", "Drawing"]

guide_michelle = User.create!(first_name: "Michelle", last_name:"Rodriguez" bio:"Hello everyone, my name is Michelle. I study biology. I like basketball, surf and mexican cuisine. Let's meet",
birth_date: "2000-01-16", gender: "Female", email: "michelle@exemple.com", password: "password", phone_number: "0606060606", role: "Guide", languages: ["FR", "EN", "ES"],
hobbies: ["Swimming", "Plants", "Culture"]

guide_maria = User.create!(first_name: "Maria", last_name:"Cotiello" bio:"Hi everyone, my name is Maria. I study medecine. I like football, tourism and spanish cuisine. Let's meet",
birth_date: "2000-06-10", gender: "Female", email: "maria@exemple.com", password: "password", phone_number: "0606060606", role: "Guide", languages: ["FR", "EN", "ES"],
hobbies: ["Football", "Travel", "Food"]

guide_simon = User.create!(first_name: "Simon", last_name:"Templar" bio:"Hello everyone, my name is Simon. I am student in arts. I like to go at museum, beer and paint. Let's meet",
birth_date: "2000-11-05", gender: "Male", email: "simon@exemple.com", password: "password", phone_number: "0606060606", role: "Guide", languages: ["FR", "EN", "RU"],
hobbies: ["Culture", "Beers", "Drawing"]

guide_etienne = User.create!(first_name: "Etienne", last_name:"Daho" bio:"Hi, I am Etienne. I study computer programing science. I like singing, travel and swimming. Let's meet",
birth_date: "2000-01-11", gender: "Male", email: "etienne@exemple.com", password: "password", phone_number: "0606060606", role: "Guide", languages: ["FR", "EN", "PT"],
hobbies: ["Singing", "Piano", "Swiming"]

guide_tony = User.create!(first_name: "Tony", last_name:"Parker" bio:"Hi everyone, my name is Tony. I am student in science. I like basketball and french cuisine. Let's meet",
birth_date: "2000-01-24", gender: "Male", email: "david@exemple.com", password: "password", phone_number: "0606060606", role: "Guide", languages: ["FR", "EN", "RU"],
hobbies: ["Football","Sneakers", "Beers"]

guide_nikola = User.create!(first_name: "Nikola", last_name:"Karabatic" bio:"Hi everyone, my name is Nikola. I study physical, education and sport. I like handball and another sports and play with musical instrument. Let's meet",
birth_date: "2000-06-04", gender: "Male", email: "nikola@exemple.com", password: "password", phone_number: "0606060606", role: "Guide", languages: ["FR", "EN", "KO"],
hobbies: ["Football", "Sneakers", "Guitar"]

guide_james = User.create!(first_name: "James", last_name:"Bond" bio:"Hello everyone, I am James. I am student in tourism. I like spy movies, sports and music mostly the rock and roll. Let's meet",
birth_date: "2000-07-07", gender: "Male", email: "james@exemple.com", password: "password", phone_number: "0606060606", role: "Guide", languages: ["FR", "EN", "DU"],
hobbies: ["Travel", "Beers", "Piano"]


# 3 Contact requests
ContactRequest.create!(guide: guide_jakub, explorer: explorer_pawel, activity: "Culture", status: "Pending")
ContactRequest.create!(guide: guide_maria, explorer: explorer_dirk, activity: "Sports", status: "Accepted")
ContactRequest.create!(guide: guide_sylvester, explorer: explorer_pawel, activity: "Travel", status: "Declined")
