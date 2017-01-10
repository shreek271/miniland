class StaticPagesController < ApplicationController

  skip_before_action :authenticate_teacher!

  def home
  	redirect_to dashboard_path if teacher_signed_in?
  end

end
