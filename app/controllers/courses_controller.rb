class CoursesController < ApplicationController
    def index
        render json: Course.all, status: :ok
    end
    def show
        render json: Course.find(params[:id])
    end
end
