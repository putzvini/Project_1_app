class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :set_product, only: %i[show edit update destroy]

  def index
    @products = Product.all
  end

  def list
    if user_signed_in?
      current_user.product
    else
      render :home, notice: 'Please, login first.'
    end
  end

  def new
    @product = Product.new
  end

  def show; end

  def create
    @product = Product.new(product_params)
    @product.user = current_user
    if @product.save
      redirect_to product_path(@product)
    else
      render :new
    end
  end

  def edit
    if @product.user == current_user
      render :edit
    else
      redirect_to @product
    end
  end

  def update
    @product.update(product_params) if @product.user == current_user
    redirect_to product_path(@product)
  end

  def destroy
    @product.destroy if @product.user == current_user
    redirect_to products_path
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :details, :price, :category, :user_id, :photo)
  end
end
