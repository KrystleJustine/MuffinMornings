class OrdersController < ApplicationController

before_action :get_order, only: [:show]

  def index
    # byebug
    @orders = Order.all

    @my_orders = @orders.select do |order|
      order.user == @logged_in_user
    end
  end

  def show

  end
  #
   # def new
   #   @order = Order.new
   #   @muffins = MuffinType.all
   #   @days = Day.all
   #
   #   @order_day = OrderDay.new
   # end

  def create
    byebug
    # @order = Order.create(order_params)
    @order = Order.create(muffin_type_id: order_params[:muffin_type_id], user_id: @logged_in_user.id)

    # create day OrderDay with
     #order_id (from @order that we just created)
     #day_id (needs to be sent back by form as params)
    byebug
  end

private

  def get_order
    @order = Order.find(params[:id])
  end

  def order_params
    params.require(:order).permit(:muffin_type_id)
  end
end
