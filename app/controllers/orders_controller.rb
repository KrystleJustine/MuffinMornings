class OrdersController < ApplicationController

before_action :get_order, only: [:show]

  def index
    @orders = Order.all

    @my_orders = @orders.select do |order|
      order.user == @logged_in_user
    end
  end

  def show

  end


  def create
    # @order = Order.create(order_params)
    @order = Order.create(muffin_type_id: order_params[:muffin_type_id], user_id: @logged_in_user.id)
  end

private

  def get_order
    @order = Order.find(params[:id])
  end

  def order_params
    params.require(:order).permit(:muffin_type_id)
  end
end
