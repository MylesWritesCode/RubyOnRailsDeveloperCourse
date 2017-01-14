class CategoriesController < ApplicationController

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

  end

  private
    def category_params
      params.require(:category).permit(:name)
    end

end
