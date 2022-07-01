class CourseSerializer < ActiveModel::Serializer
  attributes :id, :name, :gradeLevel, :show_programs
  
  # has_many :course_programs
  # has_many :programs, through: :course_programs
end
