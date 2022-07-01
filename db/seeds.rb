# require 'faker'

Assignment.destroy_all
Course.destroy_all
CourseAssignment.destroy_all


puts "creating course seeds🌱"
@ccss_math_2 = Course.create!(name:"Common Core Mathematics", gradeLevel: 2)
@ccss_ela_4 = Course.create!(name:"Common Core Literacy", gradeLevel: 4)
@tx_math_2 = Course.create!(name:"Texas Mathematics Class", gradeLevel: 2)
@tx_ela_4 = Course.create!(name:"Texas Literacy Class", gradeLevel: 4)
@aullons_au_dela = Course.create!(name:"Allons au Dela", gradeLevel: 10)
@associate_developers = Course.create!(name:"Associate Devolpers 101", gradeLevel: 1)

puts "course seeds complete🌱"

puts "creating program seeds🌱"
@ccss_envision_math = Program.create!(name:"Envision Math 2018 2nd Grade", gradeLevel: 2, is_common_core: true)
@tx_envision_math = Program.create!(name:"Texas Envision Math 2018 2nd Grade", gradeLevel: 2, is_common_core: false)

@ccss_realize = Program.create!(name:"Realize 2018 4th Grade", gradeLevel: 4, is_common_core: true)
@tx_realize = Program.create!(name:"Texas Realize 2018 4th Grade", gradeLevel: 4, is_common_core: false)

@aad_program = Program.create!(name:"Allons au Dela Program 10th Grade", gradeLevel: 10, is_common_core: false)
@associate_developers_program = Program.create!(name:"Associate Developers Program 10th Grade", gradeLevel: 10, is_common_core: false)


puts "program seeds complete🌱"

puts "creating course program seeds🌱"

# associate courses with programs

@cp_ccss_math = @ccss_math_2.course_programs.create!(program_id: @ccss_envision_math.id)
@cp_ccss_ela = @ccss_ela_4.course_programs.create!(program_id: @ccss_realize.id)

@cp_tx_math = @tx_math_2.course_programs.create!(program_id: @tx_envision_math.id)
@cp_tx_ela = @tx_ela_4.course_programs.create!(program_id: @tx_realize.id)

@cp_aullons_au_dela = @aullons_au_dela.course_programs.create!(program_id: @aad_program.id)

@cp_associate_developers = @associate_developers.course_programs.create!(program_id: @associate_developers_program.id)

puts "course program seeds complete🌱"

puts "creating assignment seeds🌱"

# ccss realize assignments

@ccss_realize_assignment_1 = @ccss_realize.assignments.create!(title: Faker::Vehicle.make , description: Faker::Lorem.paragraphs )
@ccss_realize_assignment_2 = @ccss_realize.assignments.create!(title: Faker::Vehicle.make , description: Faker::Lorem.paragraphs )
@ccss_realize_assignment_3 = @ccss_realize.assignments.create!(title: Faker::Vehicle.make , description: Faker::Lorem.paragraphs )
@ccss_realize_assignment_4 = @ccss_realize.assignments.create!(title: Faker::Vehicle.make , description: Faker::Lorem.paragraphs )
@ccss_realize_assignment_5 = @ccss_realize.assignments.create!(title: Faker::Vehicle.make , description: Faker::Lorem.paragraphs )
@ccss_realize_assignment_6 = @ccss_realize.assignments.create!(title: Faker::Vehicle.make , description: Faker::Lorem.paragraphs )

# tx realize assignments
@tx_realize_assignment_1 = @tx_realize.assignments.create!(title: Faker::Vehicle.make , description: Faker::Lorem.paragraphs )
@tx_realize_assignment_2 = @tx_realize.assignments.create!(title: Faker::Vehicle.make , description: Faker::Lorem.paragraphs )
@tx_realize_assignment_3 = @tx_realize.assignments.create!(title: Faker::Vehicle.make , description: Faker::Lorem.paragraphs )
@tx_realize_assignment_4 = @tx_realize.assignments.create!(title: Faker::Vehicle.make , description: Faker::Lorem.paragraphs )
@tx_realize_assignment_5 = @tx_realize.assignments.create!(title: Faker::Vehicle.make , description: Faker::Lorem.paragraphs )
@tx_realize_assignment_6 = @tx_realize.assignments.create!(title: Faker::Vehicle.make , description: Faker::Lorem.paragraphs )

# ccss math assignments
@ccss_envision_math_assignment_1 = @ccss_envision_math.assignments.create!(title: Faker::Vehicle.make , description: Faker::Lorem.paragraphs )
@ccss_envision_math_assignment_2 = @ccss_envision_math.assignments.create!(title: Faker::Vehicle.make , description: Faker::Lorem.paragraphs )
@ccss_envision_math_assignment_3 = @ccss_envision_math.assignments.create!(title: Faker::Vehicle.make , description: Faker::Lorem.paragraphs )
@ccss_envision_math_assignment_4 = @ccss_envision_math.assignments.create!(title: Faker::Vehicle.make , description: Faker::Lorem.paragraphs )
@ccss_envision_math_assignment_5 = @ccss_envision_math.assignments.create!(title: Faker::Vehicle.make , description: Faker::Lorem.paragraphs )
@ccss_envision_math_assignment_6 = @ccss_envision_math.assignments.create!(title: Faker::Vehicle.make , description: Faker::Lorem.paragraphs )


# Allons au Dela assignments
@aullons_au_dela_assignment_1 = @aad_program.assignments.create!(title: Faker::Vehicle.make , description: Faker::Lorem.paragraphs )
@aullons_au_dela_assignment_2 = @aad_program.assignments.create!(title: Faker::Vehicle.make , description: Faker::Lorem.paragraphs )
@aullons_au_dela_assignment_3 = @aad_program.assignments.create!(title: Faker::Vehicle.make , description: Faker::Lorem.paragraphs )
@aullons_au_dela_assignment_4 = @aad_program.assignments.create!(title: Faker::Vehicle.make , description: Faker::Lorem.paragraphs )
@aullons_au_dela_assignment_5 = @aad_program.assignments.create!(title: Faker::Vehicle.make , description: Faker::Lorem.paragraphs )
@aullons_au_dela_assignment_6 = @aad_program.assignments.create!(title: Faker::Vehicle.make , description: Faker::Lorem.paragraphs )

# associate developers assignments
@associate_developers_assignment_1 = @associate_developers_program.assignments.create!(title: Faker::Vehicle.make , description: Faker::Lorem.paragraphs )
@associate_developers_assignment_2 = @associate_developers_program.assignments.create!(title: Faker::Vehicle.make , description: Faker::Lorem.paragraphs )
@associate_developers_assignment_3 = @associate_developers_program.assignments.create!(title: Faker::Vehicle.make , description: Faker::Lorem.paragraphs )
@associate_developers_assignment_4 = @associate_developers_program.assignments.create!(title: Faker::Vehicle.make , description: Faker::Lorem.paragraphs )
@associate_developers_assignment_5 = @associate_developers_program.assignments.create!(title: Faker::Vehicle.make , description: Faker::Lorem.paragraphs )
@associate_developers_assignment_6 = @associate_developers_program.assignments.create!(title: Faker::Vehicle.make , description: Faker::Lorem.paragraphs )



# Assignment.create(title: Faker::Vehicle.make , description: Faker::Lorem.paragraphs )
# Assignment.create(title: Faker::Vehicle.make , description: Faker::Lorem.paragraphs )
# Assignment.create(title: Faker::Vehicle.make , description: Faker::Lorem.paragraphs )
# Assignment.create(title: Faker::Vehicle.make , description: Faker::Lorem.paragraphs )
# Assignment.create(title: Faker::Vehicle.make , description: Faker::Lorem.paragraphs )
# Assignment.create(title: Faker::Vehicle.make , description: Faker::Lorem.paragraphs )
# Assignment.create(title: Faker::Vehicle.make , description: Faker::Lorem.paragraphs )
# Assignment.create(title: Faker::Vehicle.make , description: Faker::Lorem.paragraphs )
# Assignment.create(title: Faker::Vehicle.make , description: Faker::Lorem.paragraphs )
# Assignment.create(title: Faker::Vehicle.make , description: Faker::Lorem.paragraphs )
# Assignment.create(title: Faker::Vehicle.make , description: Faker::Lorem.paragraphs )
# Assignment.create(title: Faker::Vehicle.make , description: Faker::Lorem.paragraphs )
# Assignment.create(title: Faker::Vehicle.make , description: Faker::Lorem.paragraphs )
# Assignment.create(title: Faker::Vehicle.make , description: Faker::Lorem.paragraphs )


puts "assignment seeds complete🌱"

puts "creating course_assignment seeds🌱"

# for each course, 
Course.all.each do |course|
    course.programs.each do |program|
        program.assignments.each do |assignment|
            course.course_assignments.create!(assignment_id: assignment.id, assignedOn: Faker::Date.in_date_period(month: 8), dueOn: Faker::Date.in_date_period(month: 9)) 
        end
    end
end
    # for each course_program
        # create a course assignment for each assignmnent

# CourseAssignment.create!(course_id: rand(1..(Course.all.length)), assignment_id: rand(1..(Assignment.all.length)), assignedOn: Date.new(2022,7,1), dueOn: Date.new(2022,8,1))
# CourseAssignment.create(course_id: rand(1..Course.all.length), assignment_id: rand(1..(Assignment.all.length)), assignedOn: Date.new(2022,7,6), dueOn: Date.new(2022,8,19))
# CourseAssignment.create(course_id: rand(1..Course.all.length), assignment_id: rand(1..Assignment.all.length), assignedOn: Date.new(2022,7,12), dueOn: Date.new(2022,9,4))
# CourseAssignment.create(course_id: rand(1..Course.all.length), assignment_id: rand(1..Assignment.all.length), assignedOn: Date.new(2022,6,5), dueOn: Date.new(2022,10,21))

puts "course_assignments seeds complete🌱"