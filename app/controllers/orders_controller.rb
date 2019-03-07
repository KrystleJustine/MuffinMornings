class OrdersController < ApplicationController

before_action :get_order, only: [:show]

  def index
    @orders = Order.all

    # @my_orders = @orders.select do |order|
    #   order.user == @logged_in_user
    # end
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
    if @order = Order.create(muffin_type_id: order_params[:muffin_type_id], user_id: @logged_in_user.id)
        @order_day = OrderDay.create(order_id: @order.id, day_id: @day.id)
        flash[:message] = "Great Selection #{@day.name} you will get #{@order.muffin_type.flavor}"
byebug
      if @order.count = 1

        redirect_to order_path
      else
        redirect_to user_path(@logged_in_user.id)
      end
     end
  end

private

  def get_order
    @order = Order.find(params[:id])
  end

  def order_params
    params.require(:order).permit(:muffin_type_id, :day_id)
  end
end
