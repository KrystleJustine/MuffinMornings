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

  def new
    @order = Order.new
  end

  def create
  end

private

  def get_order
    @order = Order.find(params[:id])
  end
end
