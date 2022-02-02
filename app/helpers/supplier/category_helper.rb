module Supplier::CategoryHelper

    def user_type  
        if current_user.user_type == "supplier"
        else
          redirect_to root_url
        end
      end

    def product_find(arg)
      Product.find(arg)
    end
      
end
