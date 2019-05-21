class LoginController < ApplicationController

  def new
    render :layout => false
  end

  def create
    @user = User.find_by(username: params[:username])
   if @user && @user.authenticate(params[:password])
     log_in_user(@user)
     redirect_to orders_path
   else
     flash[:errors] = "The username or password you entered was not correct. Please try again."
     redirect_to new_login_path
   end
  end

  def destroy
    session[:user_id] = nil
    redirect_to new_login_path
  end


end
