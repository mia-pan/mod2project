class CategoriesController < ApplicationController
  def index
    # if session[:user_id] == nil
    #   redirect_to "/users/new"
    # end
    @categories = Category.all
  end

  def new 
    @category = Category.new 
  end 

  def show 
    @category = Category.find(params[:id])
  end 

  def create 
    @category = Category.create(category_params)
    @category.save
    redirect_to @category 
  end 

  def category_params
    params.require(:category).permit(:name)
  end

end
