class CourseProgramSerializer < ActiveModel::Serializer
  attributes :id, :course, :program
  has_one :course
  has_one :program

  has_many :course_assignments
end
