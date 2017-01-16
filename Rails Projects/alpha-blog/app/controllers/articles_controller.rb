class ArticlesController < ApplicationController
  before_action :set_article, only: [:edit, :update, :show, :destroy]
  before_action :require_user, except: [:index, :show]
  before_action :require_same_user, only: [:edit, :update, :destroy]

  def index
    @articles = Article.order("id DESC").page(params[:page])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.user = current_user
    if @article.save
      flash[:success] = "Article was successfully created."
      redirect_to article_path(@article)
    else
      flash[:danger] = "The article could not be saved."
      render :new
    end
  end

  def edit

  end

  def update
    if @article.update(article_params)
      flash[:success] = "The article was successfully updated."
      redirect_to article_path(@article)
    else
      render :edit
    end
  end

  def show

  end

  def destroy
    @article.destroy
    flash[:success] = "Article was successfully deleted."
    redirect_to articles_path
  end

  private
    def article_params
      params.require(:article).permit(:title, :description, :body, :user_id, category_ids: [])
    end

    def set_article
      @article = Article.find(params[:id])
    end

    def require_same_user
      if current_user != @article.user and !current_user.admin?
        flash[:warning] = "You can only edit or delete your own articles."
        redirect_to root_path
      end
    end
end
