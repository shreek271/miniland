class FacultiesController < ApplicationController

  skip_before_action :authenticate_teacher!, only: [:index, :show]
  before_action :set_faculty, only: [:edit, :show, :update, :destroy]

  def new
  	@faculty = Faculty.new
  end

  def create
  	@faculty = Faculty.create(faculty_params)
    if @faculty.save
      flash[:success] = "Successfully created the Notice."
      redirect_to @faculty
    else
      flash[:danger] = "Something went wrong"
      redirect_to faculties_path
    end
  end

  def show
  end

  def edit
  	@faculty = Faculty.find(params[:id])
  end

  def update
  	if @faculty.update_attributes(faculty_params)
      flash[:success] = "Successfully updated the notice."
      redirect_to @faculty
    else
      flash[:danger] = "Something went wrong"
      redirect_to faculties_path
    end
  end

  def index
    @faculties = Faculty.all
  end

  def destroy
    if @faculty.destroy
      flash[:success] = "#{@faculty.name} Task deleted"
      redirect_to faculties_path
    end
  end

  private

  def faculty_params
    params.require(:faculty).permit(:name, :email, :qualification, :experience, :address, :gender, :subject, :phone, :picture)
  end

  def set_faculty
    @faculty = Faculty.find(params[:id])
  end

end
