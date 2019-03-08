class OrdersController < ApplicationController

before_action :get_order, only: [:show, :update, :edit]

  def index
    @orders = Order.all
    @new_orders = @orders.select do |order|
      order.title && order.stars && order.review
    end

    @my_orders = @orders.select do |order|
        order.user == @logged_in_user

     end
  end

  def show
    @orders = Order.all

     @my_orders = @orders.select do |order|
       order.user == @logged_in_user
     end
  end


  def create
    # @order = Order.create(order_params)
    @day = Day.find(order_params[:day_id])
    if @order = Order.create(muffin_type_id: order_params[:muffin_type_id], user_id: @logged_in_user.id, day_id: @day.id)
        flash[:message] = "Great Selection #{@day.name} you will get #{@order.muffin_type.flavor}"
        redirect_to user_path(@logged_in_user.id)
     end
  end

  def edit

  end

  def update
     @order.update(order_params)
     redirect_to orders_path
  end

private

  def get_order
    @order = Order.find(params[:id])
  end

  def order_params
    params.require(:order).permit(:muffin_type_id, :day_id, :stars, :title, :review, :muffin_url)
  end
end
