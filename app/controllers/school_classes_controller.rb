require 'pry'

class SchoolClassesController < ApplicationController

  def index
    # binding.pry
  end

  def show
    # binding.pry
    @school_class = SchoolClass.find_by_id(params[:id])
  end

  def new
    @school_class = SchoolClass.new
  end

  def edit
    @school_class = SchoolClass.find_by_id(params[:id])
  end

  def create
	  @school_class = SchoolClass.new(school_class_params(:title, :room_number))
    @school_class.save
    redirect_to school_class_path(@school_class)
	end


	def update
	  @school_class = SchoolClass.find(params[:id])
	  @school_class.update(post_params(:title))
	  redirect_to post_path(@post)
	end


  private

  def school_class_params(*args)
    params.require(:school_class).permit(*args)
  end


end
