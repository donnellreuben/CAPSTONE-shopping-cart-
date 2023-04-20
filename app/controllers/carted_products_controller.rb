class CartedProductsController < ApplicationController
  def index
    @carted_products = current_user.carted_products.where(status: "carted")
  end

  def create
    @carted_product = CartedProduct.new(
      order_id: current_user.cart["order_id"],
      product_id: params[:product_id],
      quantity: params[:quantity],
      price: Product.find(params[:product_id]).price,
      status: "carted"
    )
    if @carted_product.save
      redirect_to carted_products_path
    else
      redirect_to product_path(params[:product_id])
    end
  end

  def destroy
    @carted_product = CartedProduct.find(params[:id])
    @carted_product.update(status: "removed")
    redirect_to carted_products_path
  end
end

