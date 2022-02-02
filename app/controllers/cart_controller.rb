class CartController < ApplicationController
  include UserHelper
  def show
    @cart = find_user(current_user.id).cart
  end

  def destroy
    Cart.find(params[:id]).destroy
    redirect_to carts_path
  end
end
