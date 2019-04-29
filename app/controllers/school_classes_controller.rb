class SchoolClassesController < ApplicationController
  def index
  end

  def show
    @school_class = current_school_class
  end

  def new
    @school_class = SchoolClass.new
  end

  def create
    school_class = SchoolClass.create(school_class_params)
    redirect_to school_class_path(school_class)
  end

  def edit
    @school_class = current_school_class
  end

  def update
    school_class = current_school_class
    school_class.update(school_class_params)
    redirect_to school_class_path(school_class)
  end

  private

  def current_school_class
    SchoolClass.find(params[:id])
  end

  def school_class_params
    params.require(:school_class).permit(:title, :room_number)
  end

end
