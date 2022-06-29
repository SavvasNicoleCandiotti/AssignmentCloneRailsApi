class Course < ApplicationRecord
    has_many :course_assignments
    has_many :assignments, through: :course_assignments 

end
