class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # Makes it so you have to log in to use this web app
  before_action :authenticate_user!
  # Configuring parameters for the sign up page.
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  # Long way to sanitize sign_up action
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :password, :password_confirmation, :stripeToken])
  end
end
