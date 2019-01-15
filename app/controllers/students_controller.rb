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
    @student = Student.new(student_params(:first_name, :last_name))
    @student.save
    redirect_to school_class_path(@student)
	end


end
