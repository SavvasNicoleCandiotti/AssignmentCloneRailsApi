class CourseAssignmentSerializer < ActiveModel::Serializer
  
  attributes :id, :title, :description, :assignment_id, :course_id, :assignedOn, :dueOn

end
