class OrdersController < ApplicationController
  before_action :authenticate_user!

  def index
    @orders = current_user.orders
  end

  def show
    @order = current_user.orders.find(params[:id])
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(
      user_id: current_user.id,
      status: "carted"
    )
    if @order.save
      redirect_to carted_products_path
    else
      render :new
    end
  end

  def update
    @order = current_user.orders.find(params[:id])
    @order.update(order_params)
    redirect_to order_path(@order)
  end

private

  def order_params
    params.require(:order).permit(:status)
  end
end

