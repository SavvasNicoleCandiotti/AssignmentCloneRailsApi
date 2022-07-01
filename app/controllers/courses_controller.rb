class CoursesController < ApplicationController
    def index
        render json: courses, status: :ok
    end

    def show
        render json: course
    end

    def create 
        render json: Course.create!(course_params)
    end

    def update
        course.update!(course_params)
        render json: course
    end

    private
        
        def course_params
            params.require(:course).permit(:name, :gradeLevel)
        end

        def course
            @course = Course.find(params[:id])
        end

        def courses
            @courses = Course.all
        end
end
