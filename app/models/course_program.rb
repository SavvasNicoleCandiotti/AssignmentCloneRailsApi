class CourseProgram < ApplicationRecord
  belongs_to :course
  belongs_to :program

  has_many :course_assignments, through: :course

  
end
