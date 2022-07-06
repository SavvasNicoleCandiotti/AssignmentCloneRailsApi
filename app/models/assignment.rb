class Assignment < ApplicationRecord
    has_many :course_assignments
    has_many :courses, through: :course_assignments
    belongs_to :program

    validates :title, :title, presence: true
    validates :description, length:  { 
        maximum: 500, 
        too_long: "%{count} characters is the maximum allowed"
    }
    validates :title, length:  { 
        maximum: 50, 
        too_long: "%{count} characters is the maximum allowed"
    }
end
