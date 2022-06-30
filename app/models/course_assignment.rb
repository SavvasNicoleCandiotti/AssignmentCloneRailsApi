class CourseAssignment < ApplicationRecord
  belongs_to :course
  belongs_to :assignment
  # validates :course_id, :assignment_id, presence: true
  # validates_date :assignedOn, on: :create, on_or_after: :today
  # validates_date :dueOn, on_or_after: :assignedOn
  

  # def formatDate string do
  #   string = new Date(dueOn[0,4], dueOn[5,7], dueOn[8,10]
  # end
end
