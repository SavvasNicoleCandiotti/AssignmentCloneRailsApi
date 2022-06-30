class CoursesController < ApplicationController
    def index
        render json: Course.all, status: :ok
    end

    def show
        render json: Course.find(params[:id])
    end

    def create 
        render json: Course.create!(course_params)
    end

    private
        
        def course_params
            params.permit(:name, :gradeLevel)
        end
end
