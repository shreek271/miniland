class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_teacher!

  def after_sign_in_path_for(teacher)
    unless session["user_return_to"].blank?
      session["user_return_to"]
    else
      '/dashboard'
    end
  end

  def after_sign_up_path_for(teacher)
    '/dashboard'
  end
end
