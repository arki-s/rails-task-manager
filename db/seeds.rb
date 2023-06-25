# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "cleaning all users and tasks..."

User.destroy_all
Task.destroy_all

test1 = User.create!(email: "test1@test.com", password:"123456")
puts "created test1 user"

test2 = User.create!(email: "test2@test.com", password:"123456")
puts "created test2 user"

test3 = User.create!(email: "test3@test.com", password:"123456")
puts "created test3 user"
