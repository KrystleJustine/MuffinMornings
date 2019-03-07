class UsersController < ApplicationController
  before_action :get_user, only: [:edit, :show, :update]

  def index
    @users = User.all
  end

  def show
    @order = Order.new
    @muffins = MuffinType.all
    @days = Day.all
    @order_day = OrderDay.new
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
   if @user.save
     log_in_user(@user)
     redirect_to orders_path
   else
     flash[:errors] = @user.errors.full_messages
     redirect_to new_login_path
   end
  end

  def edit
  end

  def update
    @user.update(user_params)
    redirect_to @user
  end


  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :phone_number, :username, :password)
  end

  def get_user
    @user = User.find(params[:id])
  end

end
