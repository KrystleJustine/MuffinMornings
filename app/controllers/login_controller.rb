class LoginController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(username: params[:username])
    # byebug #USER IS NILL COME BQCK AND FIX

   if @user && @user.authenticate(params[:password])
     log_in_user(@user)
     redirect_to orders_path
   else
     flash[:errors] = "The username or password you entered was not correct."
     redirect_to new_login_path
   end
  end

  def destroy
    session[:user_id] = nil
    redirect_to new_user_path
  end

  # private
  # def login_params
  #   params.require(:login).permit(:username, :password)
  # end

end
