class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

   protected
    
    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:email, :password) }
      devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:first_nm, :last_nm, :email, :password, :password_confirmation, :iaccept, :role, :ref_id, :referral_id, :ssn, :username, :role) }
      devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:username, :email, :password, :password_confirmation, :current_password, :role) }
    end
end
