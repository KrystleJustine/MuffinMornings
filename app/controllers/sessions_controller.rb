class SessionController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(user: params[:user][:email].downcase)
    if @user && user.authenticate(params[:password])
      #user instance if the user is found... user instance will be truthy
      # method that needs to be written
      redirect_to @user
    else
      flash[:errors] = ["The username or passowrd you entered was not correct."]
      redirect_to #new login page
      render 'new'
    end
  end

  def destroy
    session.delete :user
  end
end