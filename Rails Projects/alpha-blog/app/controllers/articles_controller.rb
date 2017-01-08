class ArticlesController < ApplicationController
  def index
    # index.html.erb
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      flash[:success] = "Article was successfully created."
      redirect_to article_path(@article)
    else
      flash[:warning] = Article.errors.full_messages
      render :new
    end
  end

  def show
    @article = Article.find(params[:id])
  end

  private
    def article_params
      params.require(:article).permit(:title, :description)
    end
end
