# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "cleaning all tasks..."

Task.destroy_all

# Task.create(title: "Coding", details: "keep learning")
# Task.create(title: "Reading books", details: "at least 30 minutes!")
# Task.create(title: "Squat", details: "at least 50 times!")
# Task.create(title: "Walking", details: "at least 30 minutes!")
# Task.create(title: "Meditation", details: "at least 10 minutes!")
