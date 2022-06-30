class AssignmentsController < ApplicationController

    def index
        render json: Assignment.all, status: :ok
    end
    def show
        render json: Assignment.find(params[:id])
    end

    def create 
        render json: Assignment.create!(assignment_params), status: :ok
    end

private
def assignments_params 
    params.permit(:title, :description)
end
end
