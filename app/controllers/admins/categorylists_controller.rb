class Admins::CategorylistsController < ApplicationController  
  include Admin::CategoryHelper
  before_action :user_type, only: [:index,:show,:new,:create,:edit,:update,:destroy]
  
  
  def index
    @categories = Categorylist.all
    @users = User.all
  end

  def show
    $category_id = params[:id]
    @subcategories  = categorylist(params[:id]).subcategories
  end

  def new
    @category = Categorylist.new
  end

  def create
    @category = Categorylist.new(name: params['categorylist']['name'],cover:params['categorylist']['cover'])
    if @category.save
      flash[:notice] = "Category Created Sucessfully"
      redirect_to admins_categorylists_path 
    else
      render :new
    end
  end

  def edit
    @category = categorylist(params[:id])
  end

  def update
    @category = categorylist(params[:id])
    @category.update(name: params['categorylist']['name'],cover:params['categorylist']['cover'])
    if @category.save 
        flash[:notice] = "Category Updated Sucessfully"
        redirect_to admins_categorylists_path
      else
        render :edit
      end
    end

  def destroy
    categorylist(params[:id]).destroy
    flash[:notice] = "Category Deleted Sucessfully"

    redirect_to admins_categorylists_url
  end

  # private
  # def category_params
  #   params.require(:category).permit(:name)
  # end
end
