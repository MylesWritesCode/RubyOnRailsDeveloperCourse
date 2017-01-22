class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # Makes it so you have to log in to use this web app
  before_action :authenticate_user!
end
