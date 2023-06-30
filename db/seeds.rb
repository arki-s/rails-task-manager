status = [true, false]

puts "cleaning all users and tasks..."

User.destroy_all
Task.destroy_all

testuser = User.create!(email: "test@test.com", password:"123456")
puts "created test user"

task1 = Task.create!(title: "Coding", details: "Keep learning!", user_id: testuser.id)
Complete.create!(task_id: task1.id, status: true, date: Date.yesterday)
    date1 = 1
    30.times do
      Complete.create!(task_id: task1.id, status: true, date: (Date.yesterday - date1))
      date1 += 1
    end

puts "created sample task1 for test user"

task2 = Task.create!(title: "Reading Books", details: "at least 30 minutes", user_id: testuser.id)
Complete.create!(task_id: task2.id, status: false, date: Date.today)
    date2 = 1
    30.times do
      Complete.create!(task_id: task2.id, status: status.sample, date: (Date.today - date2))
      date2 += 1
    end

puts "created sample task2 for test user"

task3 = Task.create!(title: "Running", details: "at least 30 minutes", user_id: testuser.id)
Complete.create!(task_id: task3.id, status: false, date: Date.today)
    date3 = 1
    30.times do
      Complete.create!(task_id: task3.id, status: false, date: (Date.today + date3))
      date3 += 1
    end

puts "created sample task3 for test user"
