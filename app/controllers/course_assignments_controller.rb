class CourseAssignmentsController < ApplicationController

    def index
        render json: CourseAssignment.all, status: :ok
    end

    def show
        render json: course_assignment
    end

    def create
        render json: CourseAssignment.create!(course_assignment_params)
    end

    def update
        course_assignment.update!(course_assignment_params)
        render json: course_assignment
    end

    def destroy
        course_assignment.destroy
    end


    private
    
    def course_assignment_params
        params.require(:course_assignment).permit(:course_id, :assignedOn, :dueOn, :assignment_id)
    end

    def course_assignment
        @course_assignment = CourseAssignment.find(params[:id])
    end

end
