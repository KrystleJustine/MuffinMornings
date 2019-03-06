class LoginController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(username: params[:login][:username])
    # byebug #USER IS NILL COME BQCK AND FIX
   if @user && @user.authenticate(params[:login][:password])
     # log_in_user(@user)

     redirect_to orders_path
   else
     flash[:errors] = "The username or password you entered was not correct."
     redirect_to '/login'
   end
  end


end
