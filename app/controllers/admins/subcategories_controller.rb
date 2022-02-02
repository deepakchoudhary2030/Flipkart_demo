class Admins::SubcategoriesController < ApplicationController
  include Admin::CategoryHelper
  before_action :user_type, only: [:index,:show,:new,:create,:edit,:update,:destroy]
 

  def new
    @subcategory = Categorylist.new 
  end


  def create
    @subcategory = Categorylist.new(name:params["categorylist"]["name"],cover:params['categorylist']['cover'] ,category_id:$category_id)
    if @subcategory.save
      flash[:notice] = "Sub Category Created Sucessfully"
      redirect_to admins_categorylist_path($category_id)
    else
      render :new
    end
  end


  def edit
    @subcategory = categorylist(params[:id])
  end

  
  def update
    @subcategory = categorylist(params[:id])
    @subcategory.update(name:params["categorylist"]["name"],cover:params['categorylist']['cover'])
      if @subcategory.save  
        flash[:notice] = "Updated Sucessfully"
        redirect_to admins_categorylist_path($category_id)
      else
        render :edit
      end
    end


  def destroy
    categorylist(params[:id]).destroy
    flash[:notice] = "Deleted Sucessfully"
    redirect_to admins_categorylist_path($category_id)
  end

  
end
