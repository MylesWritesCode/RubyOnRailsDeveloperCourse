class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :update, :show, :make_admin]
  before_action :require_same_user, only: [:edit, :update, :destroy]
  before_action :require_admin, only: [:destroy]

  def index
    @users = User.paginate(page: params[:page], per_page: 10)
    respond_to do |format|
      format.html
      format.js { render layout: false }
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:success] = "Welcome to Alpha Blog, #{@user.username}!"
      redirect_to user_path(@user)
    else
      @user.errors.full_messages.each do |msg|
        flash[:danger] = msg
      end
      render 'new'
    end
  end

  def edit

  end

  def make_admin
    @user.toggle!(:admin)
    redirect_to users_path
  end

  def update
    if @user.update(user_params)
      flash[:success] = "Your account was updated successfully!"
      redirect_to articles_path
    else
      render 'edit'
    end
  end

  def show
    @user_articles = @user.articles.order("id DESC").paginate(page: params[:page], per_page: 5)
    respond_to do |format|
      show.html
      show.js { render format: false }
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash[:danger] = "User and all articles have been deleted."
    redirect_to users_path
  end

  private
    def user_params
      params.require(:user).permit(:username, :email, :password)
    end

    def set_user
      @user = User.find(params[:id])
    end

    def require_same_user
      if current_user.id != @user.id && !current_user.admin?
        flash[:warning] = "You can only edit your own profile."
        redirect_to root_path
      end
    end

    def require_admin
      if logged_in && !current_user.admin?
        flash[:warning] = "Only admin users can perform that action."
        redirect_to root_path
      end
    end
end
