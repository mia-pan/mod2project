class ProductsController < ApplicationController
  def new
    @product = Product.new 
  end

  def create
    @product = Product.new(product_params)
    @product.save
    if @product
      flash[:sucess] = "Product Created!"
    # redirect_to @product.post
      redirect_to categories_path
    else
      puts @product.errors.full_messages
      flash[:error] = "error in create product"
      render :new
    end
  end


  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to @product
  end

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  private 
  def product_params 
    params.require(:product).permit(:name, :category_id, :brand_id)
  end 

end
