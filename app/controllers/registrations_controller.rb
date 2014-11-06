class RegistrationsController < Devise::RegistrationsController

	
  private
 
  def sign_up_params
    params.require(:user).permit(:name,:email,:dob, :password, :member_type,:ccn, :msd, :dom, :med, :amount)
  end
 
  def account_update_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation, :current_password, :role,:name,:dob,:member_type,
:ccn, :msd, :dom, :med, :amount)
  end


end