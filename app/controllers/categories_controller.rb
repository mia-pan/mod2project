class CategoriesController < ApplicationController
  def index
    if session[:user_id] == nil
      redirect_to "/users/new"
    end
    @categories = Category.all
  end

  def show 
    @category = Category.find(params[:id])
  end 

  def create 
    Category.create(category_params)
  end 

  def category_params
    params.require(:category).permit(:name)
  end

end
