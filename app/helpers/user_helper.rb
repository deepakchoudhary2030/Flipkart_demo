module UserHelper

    def find_user(arg)
        User.find(arg)
    end

    def find_cart(arg)
        Cart.find(arg)
    end

    def categorylist(arg)
        Categorylist.find(arg)
    end

    def sub1(arg)
      j=0
      k=1 
      @subcategory = []
      arg.each do |i|
        if i.category_id != nil
          while(j<k)
            @subcategory[j] = i  
            j+=1
          end
          k+=1
        end
      end
    end
end