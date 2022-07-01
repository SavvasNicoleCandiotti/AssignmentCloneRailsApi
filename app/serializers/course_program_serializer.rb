class CourseProgramSerializer < ActiveModel::Serializer
  attributes :id
  has_one :course
  has_one :program
end
