class LoginController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(username: params[:login][:username])
    # byebug #USER IS NILL COME BQCK AND FIX
    # byebug
   if @user && @user.authenticate(params[:login][:password])
     log_in_user(@user)
     redirect_to orders_path
   else
     flash[:errors] = "The username or password you entered was not correct."
     redirect_to '/login'
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
