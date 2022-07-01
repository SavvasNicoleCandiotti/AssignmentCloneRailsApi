class Course < ApplicationRecord
    has_many :course_assignments
    has_many :assignments, through: :course_assignments
    validates :name, presence: true, length: { maximum: 50 }
    validates :gradeLevel, numericality: { only_integer: true }
    
    has_many :course_programs
    has_many :programs, through: :course_programs

    def show_programs
        self.programs
    end
end
