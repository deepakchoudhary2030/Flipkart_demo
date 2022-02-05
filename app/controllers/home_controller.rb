class HomeController < ApplicationController
  include UserHelper
  

  def index
    case
    when current_user.user_type =="user"
       @categories = Categorylist.all
       @product1 = Product.all
       sub1(@categories)
       
    when current_user.user_type =="admin"
      redirect_to "/admins/categorylists"
    when current_user.user_type =="supplier"
      redirect_to "/supplier/products"
    
      
    end
  end

  def subcategory
    @subcategory  = categorylist(params[:id]).subcategories
  end

  def product 
    @product  = categorylist(params[:id]).products
  end

  def profile
    @user = User.find(current_user.id)
  end

  def addcart

    @Addcart = ListItem.new
    @Addcart.save
    redirect_to root_url
  
  end

  def cart
    @CartItems = find_user(params[:id]).carts
    @CartItems.each do |cartItem|  
      @listitem = find_cart(cartItem.id).list_items
    end
  end

  
end
