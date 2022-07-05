class CourseProgramsController < ApplicationController

    def index
        render json: course_programs, status: :ok
    end
    
    def show
        render json: course_program
    end

    # def create 
    #     @course_program = CourseProgram.create!(programs_params)
    #     render json: @program, status: :created
    # end

private

    def course_programs_params 
        params.require(:course_program).permit(:name, :gradeLevel, :is_common_core)
    end

    def course_program
        @course_program = CourseProgram.find(params[:id])
    end

    def course_programs
        @course_programs = CourseProgram.all
    end

end
