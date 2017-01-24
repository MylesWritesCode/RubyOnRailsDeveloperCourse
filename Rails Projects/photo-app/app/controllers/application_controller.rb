class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # Configuring parameters for the sign up page.
  before_action :configure_permitted_parameters, if: :devise_controller?
  # Makes it so you have to log in to use this web app
  before_action :authenticate_user!

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |user_params|
      user_params.permit(:email, :password, :password_confirmation, :stripe_card_token)
    end
  end
end
