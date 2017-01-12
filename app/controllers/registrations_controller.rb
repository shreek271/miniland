class RegistrationsController < Devise::RegistrationsController 

  private
  #Methods for sending custom parms that are not available in devise.
  def sign_up_params
    params.require(:teacher).permit(:email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:teacher).permit(:email, :password, :password_confirmation, :current_password)
  end
end
