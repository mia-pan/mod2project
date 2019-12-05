class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.save 
    redirect_to @post 
  end

  def edit

  end

  def update
  end

  def destroy
  end

  def index
  end

  def show
    @post = Post.find(params[:id])
  end

  private 
  
  def post_params
    params.require(:post).permit(:like, :post_datetime, :product_id, :category_name, category_ids:[]) 
  end 

end
