class ProgramsController < ApplicationController

     def index
        render json: programs, status: :ok
    end
    
    def show
        render json: program
    end

    def create 
        @program = Program.create!(programs_params)
        render json: @program, status: :created
    end

private

    def programs_params 
        params.require(:program).permit(:name, :gradeLevel, :is_common_core)
    end

    def program
        @program = Program.find(params[:id])
    end

    def programs
        @programs = Program.all
    end
end
