class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  # before_filter :configure_permitted_parameters, if: :devise_controller?  #Deprecated in Devise 4.1 and higher
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  protected
    def configure_permitted_parameters
      # devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:name, :stripe_card_token, :email, :password, :password_confirmation) } #Deprecated in Devise 4.1
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :stripe_card_token, :email, :password, :password_confirmation])
      # devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :phone, :email, bank_attributes: [:bank_name, :bank_account]])

    end
end
