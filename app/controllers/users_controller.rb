class UsersController < ApplicationController

before_action :get_user, only: [:show]

  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
      redirect_to user_path(@user)
      #needs to go to order index page
  end

  private
  def get_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :phone_number, :username, :password)
  end

end
