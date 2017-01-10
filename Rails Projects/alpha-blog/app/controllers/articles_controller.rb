class ArticlesController < ApplicationController
  def index
    @articles = Article.all
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

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      flash[:success] = "The article was successfully updated."
      redirect_to article_path(@article)
    else
      render :edit
    end
  end

  def show
    @article = Article.find(params[:id])
  end

  def delete
    @article = Article.find(params[:id])
    @article.destroy
  end

  private
    def article_params
      params.require(:article).permit(:title, :description)
    end
end
