class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user, :logged_in?, :toggle_admin

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    !!current_user
  end

  def require_user
    if !logged_in?
      flash[:warning] = "You must be logged in to access this page."
      redirect_to root_path
    end
  end

  def toggle_admin
    if logged_in?
      user.toggle!(:admin)
    end
  end
end
