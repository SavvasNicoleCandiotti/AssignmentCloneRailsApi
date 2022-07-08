class CourseAssignmentSerializer < ActiveModel::Serializer

  attributes :id, :title, :description, :assignment_id, :course_id, :assignedOn, :dueOn, :program_id, :course_name

end
