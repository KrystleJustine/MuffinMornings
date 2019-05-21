class SessionController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(user: params[:user][:email].downcase)
    if @user && user.authenticate(params[:password])
      redirect_to @user
    else
      flash[:errors] = ["The username or passowrd you entered was not correct."]
      redirect_to
      render 'new'
    end
  end

  def destroy
    reset_session
    redirect_to "/"
  end
end
