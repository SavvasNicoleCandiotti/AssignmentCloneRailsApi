class Program < ApplicationRecord
    has_many :course_programs
    has_many :courses, through: :course_programs
    has_many :assignments

    validates :name, presence: true, length: { maximum: 50 }
    validates :gradeLevel, presence: true, numericality: { only_integer: true }
end
