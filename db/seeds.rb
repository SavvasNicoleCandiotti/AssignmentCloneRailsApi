# require 'faker'

Assignment.destroy_all
Course.destroy_all
CourseAssignment.destroy_all


puts "creating course seeds🌱"
Course.create(name:"Common Core Mathematics", gradeLevel: 2)
Course.create(name:"Common Core Literacy", gradeLevel: 4)
Course.create(name:"Allons au Dela", gradeLevel: 10)
Course.create(name:"Associate Devolpers 101", gradeLevel: 1)

puts "course seeds complete🌱"

puts "creating assignment seeds🌱"

Assignment.create(title: Faker::Vehicle.make , description: Faker::Lorem.paragraphs )
Assignment.create(title: Faker::Vehicle.make , description: Faker::Lorem.paragraphs )
Assignment.create(title: Faker::Vehicle.make , description: Faker::Lorem.paragraphs )
Assignment.create(title: Faker::Vehicle.make , description: Faker::Lorem.paragraphs )
Assignment.create(title: Faker::Vehicle.make , description: Faker::Lorem.paragraphs )
Assignment.create(title: Faker::Vehicle.make , description: Faker::Lorem.paragraphs )
Assignment.create(title: Faker::Vehicle.make , description: Faker::Lorem.paragraphs )
Assignment.create(title: Faker::Vehicle.make , description: Faker::Lorem.paragraphs )
Assignment.create(title: Faker::Vehicle.make , description: Faker::Lorem.paragraphs )
Assignment.create(title: Faker::Vehicle.make , description: Faker::Lorem.paragraphs )
Assignment.create(title: Faker::Vehicle.make , description: Faker::Lorem.paragraphs )
Assignment.create(title: Faker::Vehicle.make , description: Faker::Lorem.paragraphs )
Assignment.create(title: Faker::Vehicle.make , description: Faker::Lorem.paragraphs )
Assignment.create(title: Faker::Vehicle.make , description: Faker::Lorem.paragraphs )
Assignment.create(title: Faker::Vehicle.make , description: Faker::Lorem.paragraphs )

puts "course seeds complete🌱"
puts "creating course_assignment seeds🌱"
CourseAssignment.create!(course_id: rand(1..(Course.all.length)), assignment_id: rand(1..(Assignment.all.length)), assignedOn: Date.new(2022,7,1), dueOn: Date.new(2022,8,1))
CourseAssignment.create(course_id: rand(1..Course.all.length), assignment_id: rand(1..(Assignment.all.length)), assignedOn: Date.new(2022,7,6), dueOn: Date.new(2022,8,19))
CourseAssignment.create(course_id: rand(1..Course.all.length), assignment_id: rand(1..Assignment.all.length), assignedOn: Date.new(2022,7,12), dueOn: Date.new(2022,9,4))
CourseAssignment.create(course_id: rand(1..Course.all.length), assignment_id: rand(1..Assignment.all.length), assignedOn: Date.new(2022,6,5), dueOn: Date.new(2022,10,21))
puts "course seeds complete🌱"