module Admin::CategoryHelper
    
  def categorylist(arg)
    Categorylist.find(arg)
end


  def user_type  
    if current_user.user_type == "admin"

    else
      redirect_to root_url
    end
  end

end
