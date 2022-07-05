class Course < ApplicationRecord
    has_many :course_assignments
    has_many :assignments, through: :course_assignments
    has_many :course_programs
    has_many :programs, through: :course_programs

    validates :name, presence: true, length: { maximum: 50 }
    validates :gradeLevel, numericality: { only_integer: true }
    
end
