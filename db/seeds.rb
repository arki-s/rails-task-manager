# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "cleaning all tasks..."

Task.destroy_all

Task.create(title: "Coding", detail: "keep learning")
Task.create(title: "Reading books", detail: "at least 30 minutes!")
Task.create(title: "Squat", detail: "at least 50 times!")
Task.create(title: "Walking", detail: "at least 30 minutes!")
Task.create(title: "Meditation", detail: "at least 10 minutes!")
