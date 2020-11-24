class PurchasesController < ApplicationController

  def index
    @purchases = current_user.purchases
  end

  def show
    @purchase = Purchase.find(params[:id])
  end

  def create
    @purchase = Purchase.new
    product = Product.find(params[:product_id])
    @purchase.product = product
    @purchase.user = current_user
    @purchase.value = product.price
    if @purchase.save!
      redirect_to purchase_path(@purchase)
    else
      render :home
    end
  end
end
