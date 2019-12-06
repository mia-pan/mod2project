class AuthController < ApplicationController
#    skip_before_action :redirect_user 
    def signin

    end

    def verify
        # byebug
        @user = User.find_by(name: params[:auth][:username])
        #  byebug
        if @user && @user.authenticate(params[:auth][:password])
            #byebug
            session[:user_id] = @user.id
            redirect_to categories_path
        else 
            flash[:message] = "Incorrect detail please try again"
            render :signin
        end
        
    end

    def logout
        session.clear
        redirect_to login_path
    end

    def current_user
        @user = User.find(session[:user_id])
    end
end 