class ProductsController < ApplicationController

# INDEX
  def index
    @products = Product.all
  end

# SHOW
  def show
    @product = Product.find(params[:id])
  end

# NEW
  def new
    @product = Product.new
  end

# CREATE
  def create
    @product = Product.new(product_params)
    if @product.save
      render json: {message: 'Product created successfully'}
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

# UPDATE
  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      render json: {message: 'Product updated successfully'}
    else
      render :edit
    end
  end

# DELETE
  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path
  end

private

  def product_params
    params.permit(:name, :description, :price)
  end
end
