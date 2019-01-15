class StudentsController < ApplicationController

  def index
  end

  def show
    @student = Student.find_by_id(params[:id])
  end

  def new
    @student = Student.new
  end

  def edit
    @student = Student.find_by_id(params[:id])
  end

  def create
    # binding.pry
    @student = Student.create(first_name: params[:first_name], last_name: params[:last_name])
    redirect_to student_path(@student)
	end


end
