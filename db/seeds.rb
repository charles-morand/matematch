# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ContactRequest.destroy_all
User.destroy_all

puts "All seeds were destroyed"

guide = User.create!(first_name: "John",
                     last_name: "Doe",
                     bio: "blablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablabla",
                     birth_date: Date.new(2003, 5, 17),
                     gender: "Male",
                     email: "john@example.com",
                     password: "password",
                     phone_number: "0102030405",
                     role: "Guide",
                     languages: ["FR", "GB"],
                     hobbies: ["Skateboard", "Football"],
                     chosen_activities: ["Arts"])

explorer = User.create!(first_name: "Andrea",
                        last_name: "Gia",
                        bio: "blablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablabla",
                        birth_date: Date.new(1995, 5, 17),
                        gender: "Female",
                        email: "andrea@example.com",
                        password: "password",
                        phone_number: "0102030405",
                        role: "Explorer",
                        languages: ["FR", "ES"],
                        hobbies: ["Skateboard", "Football"],
                        chosen_activities: ["Arts"])

puts "Users created"

ContactRequest.create!(guide: guide, explorer: explorer, activity: "Arts", status: "Pending")

puts "Requests created"
