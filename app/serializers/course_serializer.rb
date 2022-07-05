class CourseSerializer < ActiveModel::Serializer
  attributes :id, :name, :gradeLevel
  
  has_many :programs
  has_many :course_assignments
end
