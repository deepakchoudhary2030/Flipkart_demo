class OrderController < ApplicationController
  include UserHelper
  def index
    @products = []
    i=0
    n=1
    @orders = find_user(current_user.id).orders
        @orders.each do |order|
      while(i<n)
        @products[i] = Product.find(order.product_id)
        i+=1
      end
      n+=1
    end
  end


  def show
    @order = find_user(params[:id]).orders
  end

  def new
    @order = Order.new
  end

  def create
    current_cart =  find_user(current_user.id).cart
    find_cart(current_cart.id).products.each do |item|
        @order = Order.new(status:params["status"],user_id:current_user.id,product_id:item.id)
        @order.save
        
      end
      find_cart(current_cart.id).destroy
    
    redirect_to root_path
  end

end
