class ListitemController < ApplicationController
  include UserHelper
  before_action :listitem , only: [:add_quantity,:reduce_quantity,:destroy]
  
  def listitem
    ListItem.find(params[:id])
  end

  def create
    chosen_product = Product.find(params[:product_id])
    if find_user(current_user.id).cart == nil
      current_cart = Cart.create(user_id:current_user.id)

    else  
      current_cart =  find_user(current_user.id).cart
    end
    
    if find_cart(current_cart.id).products.include?(chosen_product)
      @list_item = find_cart(current_cart.id).list_items.find_by(product_id: chosen_product)
      @list_item.quantity += 1
    else
      @list_item = ListItem.new(cart_id:current_cart.id, product_id:chosen_product.id, user_id:current_user.id)
    end
    
    @list_item.save
    redirect_to cart_path
  end


  def add_quantity
    @list_item =  listitem
    @list_item.quantity += 1
    @list_item.save
    redirect_to cart_path
  end
  

  def reduce_quantity
    @list_item = listitem
    if @list_item.quantity > 1
      @list_item.quantity -= 1
    end
    @list_item.save
    redirect_to cart_path
  end
  def destroy
    @list_item = listitem
    @list_item.destroy
    redirect_to cart_path
  end 
  # private
  #   def list_item_params
  #     params.require(:list_item).permit(:quantity,:product_id, :cart_id)
  #   end

  
  
end
