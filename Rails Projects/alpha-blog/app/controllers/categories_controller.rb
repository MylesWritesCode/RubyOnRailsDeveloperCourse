class CategoriesController < ApplicationController
  before_action :require_admin, except: [:index, :show]

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      flash[:success] = "Category created!"
      redirect_to categories_path
    else
      @category.errors.full_messages.each do |msg|
        flash[:danger] = msg
      end
      render 'new'
    end
  end

  def show
    @category = Category.find(params[:id])
    @category_articles = @category.articles.order("id DESC").paginate(page: params[:page], per_page: 5)
    respond_to do |format|
      format.html
      format.js { render layout: false }
    end
  end

  private
    def category_params
      params.require(:category).permit(:name)
    end

    def require_admin
      if !logged_in? || (logged_in? && !current_user.admin?)
        flash[:warning] = "Only administrators can perform that action."
        redirect_to categories_path
      end
    end

end
