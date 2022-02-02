module ListitemHelper
    
    def listitem
        ListItem.find(params[:id])
    end

    def user_find
        User.find(current_user.id)
    end
    
    def cart_find
        Cart.find(current_cart.id)
    end
end
