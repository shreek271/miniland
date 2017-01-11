class NoticesController < ApplicationController

  skip_before_action :authenticate_teacher!, only: [:index, :show]
  before_action :set_notice, only: [:edit, :show, :update, :destroy]

  def new
    @notice = Notice.new
  end

  def create
    @notice = Notice.create(notice_params)
    if @notice.save
      flash[:success] = "Successfully created the Notice."
      redirect_to @notice
    else
      flash[:danger] = "Something went wrong"
      redirect_to notices_path
    end
  end

  def edit
  end

  def show
  end

  def index
    @notices = Notice.all
  end

  def update
    if @notice.update_attributes(notice_params)
      flash[:success] = "Successfully updated the notice."
      redirect_to @notice
    else
      flash[:danger] = "Something went wrong"
      redirect_to notices_path
    end
  end

  def destroy
  end

  private

  def notice_params
  	params.require(:notice).permit(:name, :description)
  end

  def set_notice
    @notice = Notice.find(params[:id])
  end

end
