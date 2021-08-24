# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

guide = User.create!(first_name: "John",
                     last_name: "Doe",
                     bio: "blablablablablablablablablablablablablablablablablablablablablablablablablablablabla",
                     age: 19,
                     birth_date: Date.new(2003, 5, 17),
                     gender: "male",
                     email: "john@example.com",
                     password: "password",
                     phone_number: "0102030405",
                     role: "Guide",
                     languages: ["FR", "GB"],
                     hobbies: ["Tennis", "Football"],
                     chosen_activities: ["Arts"])

explorer = User.create!(first_name: "Andrea",
                        last_name: "Gia",
                        bio: "blablablablablablablablablablablablablablablablablablablablablablablablablablablabla",
                        age: 26,
                        birth_date: Date.new(1995, 5, 17),
                        gender: "female",
                        email: "andrea@example.com",
                        password: "password",
                        phone_number: "0102030405",
                        role: "Explorer",
                        languages: ["FR", "ES"],
                        hobbies: ["Skate", "Football"],
                        chosen_activities: ["Arts"])

ContactRequest.create!(guide_id: guide.id, explorer_id: explorer.id, activity: "Arts", status: "Pending")
