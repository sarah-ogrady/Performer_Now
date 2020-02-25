# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "deleting"
User.destroy_all
Performer.destroy_all

User.create email: "test@test.com", password: "123456"

Performer.create(first_name: "Graham", last_name: "Hill", job_title: "Fire Performer", hourly_rate: 50)
Performer.create(first_name: "Kate", last_name: "Lansdale", job_title: "Wedding Singer", hourly_rate: 100)
Performer.create(first_name: "Zac", last_name: "Price", job_title: "Actor", hourly_rate: 150)
puts "done"
