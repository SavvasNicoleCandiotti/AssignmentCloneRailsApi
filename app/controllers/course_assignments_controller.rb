class CourseAssignmentsController < ApplicationController
    def index
        render json: CourseAssignment.all, status: :ok
    end
    def show
        render json: CourseAssignment.find(params[:id])
    end
end
