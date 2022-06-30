
class AssignmentsController < ApplicationController

    def index
        render json: Assignment.all, status: :ok
    end
    def show
        render json: Assignment.find(params[:id])
    end

    def create 
        # binding.break
        assignment = Assignment.create!(assignments_params)
        render json: assignment, status: :created
    end

private

def assignments_params 
    binding.break
    params.permit([:title, :description])
end
end
