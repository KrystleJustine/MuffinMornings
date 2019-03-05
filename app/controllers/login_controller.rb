class LoginController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(username: params[:username])
   if @user && @user.authenticate(params[:password])
     log_in_user(@user)
     redirect_to orders_path
   else
     flash[:errors] = ["The username or password you entered was not correct."]
     redirect_to '/login'
   end
  end


end
