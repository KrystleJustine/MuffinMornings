class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])



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

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :phone_number, :username, :password)
  end

end
