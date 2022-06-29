class AssignmentsController < ApplicationController

    def index
        render json: Assignment.all, status: :ok
    end
    def show
        render json: Assignment.find(params[:id])
    end

end
