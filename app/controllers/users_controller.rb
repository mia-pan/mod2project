class UsersController < ApplicationController
  def show
    @user = User.find(session[:user_id])
  end

  def new
    @user = User.new 
  end

  def create
    @user = User.new(user_params)
    @user.save
    # session[:user_id] = @user.id
    redirect_to categories_path
  end

  def login 
  @user = User.find_by(params[:user_name])

  session[:user_id] = @user.id
  redirect_to @category 
end

  def destroy
  end

  private 
  def user_params
    params.require(:user).permit(:name, :age, :follower_name, :email, :password, :avatar)
  end 

end
