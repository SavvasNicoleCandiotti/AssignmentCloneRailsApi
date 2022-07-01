
class AssignmentsController < ApplicationController
    # wrap_parameters Assignment

    def index
        render json: Assignment.all, status: :ok
    end
    
    def show
        render json: Assignment.find(params[:id])
    end

    def create 
        assignment = Assignment.create!(assignments_params)
        render json: assignment, status: :created
    end

private

    def assignments_params 
        params.require(:assignment).permit(:title, :description)
    end
    
end
