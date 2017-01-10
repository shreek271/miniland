class RegistrationsController < Devise::RegistrationsController 

  
  private
  #Methods for sending custom parms that are not available in devise.
  def sign_up_params
    params.require(:teacher).permit(:name, :email, :password, :password_confirmation, :address, :gender, :qualification, :subject, :experience, :picture, :phone)
  end

  def account_update_params
    params.require(:teacher).permit(:name, :email, :password, :password_confirmation, :current_password, :address, :gender, :qualification, :subject, :experience, :picture, :phone)
  end
end
