class PostsController < ApplicationController
  def new
    @post = Post.new 
  end

  def create
    post_params[:user_id] = session[:user_id]
    @post = Post.new(post_params)
    @post.save 
    #@post_product_id = Post.product.find(params[:id])
    # byebug
    # @post.user = session[:user_id]
    # if @post.valid?
    #   @post.save 
   
      redirect_to post_path(@post)
    # else
    #   flash[:error] = "Error in create post."
    #   puts @post.errors.full_messages
    #   render :new
    # end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(review: params[:review], datetime: params[:post_datetime], like: params[:likes])
    redirect_to @post
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to @post
  end

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  private 
  
  def post_params
    params.require(:post).permit(:review, :likes, :post_datetime, :user_id, :product_id, category_ids:[]) 
  end 

end
