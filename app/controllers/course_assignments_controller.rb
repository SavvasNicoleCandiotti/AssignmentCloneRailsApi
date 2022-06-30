class CourseAssignmentsController < ApplicationController
    
    def index
        render json: CourseAssignment.all, status: :ok
    end

    def show
        render json: CourseAssignment.find(params[:id])
    end

    def create
        render json: CourseAssignment.create!(course_assignment_params)
    end

    private
    
    def course_assignment_params
        params.permit(:assignment_id, :course_id, :assignedOn, :dueOn)
    end

end
