class CourseAssignment < ApplicationRecord
  belongs_to :course
  belongs_to :assignment
  # validates :course_id, :assignment_id, presence: true
  validates_date :assignedOn, on: :create, on_or_after: lambda { Date.current }
  validates_date :dueOn, on_or_after: :assignedOn
  

  def title 
    self.assignment.title
  end

  def description
    self.assignment.description
  end

  def program_id
    self.assignment.program_id
  end

end
