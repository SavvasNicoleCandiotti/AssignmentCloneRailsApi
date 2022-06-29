class Assignment < ApplicationRecord
    has_many :course_assignments
    has_many :courses, through: :course_assignments
end
