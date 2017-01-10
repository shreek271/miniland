class TeachersController < ApplicationController

  def new
  	@teacher = Teacher.new
  end

  def edit
  	@teacher = Teacher.find(params[:id])
  end

  def update
  end

  private
  def teacher_params
    params.require(:teacher).permit(:name, :email, :qualification, :experience, :address, :gender, :subject, :phone, :picture)
  end
end
