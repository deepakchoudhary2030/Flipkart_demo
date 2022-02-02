class Supplier::ProductsController < ApplicationController
  
  include Supplier::CategoryHelper
  before_action :user_type, only: [:index,:show,:new,:create,:edit,:update,:destroy]
  
  def index
    @product = Product.all
    @category = Categorylist.all
  end
 

  def new
    @product = Product.new
  end


  def create
    params[:product][:categorylist_id] = $categorylist_id
    @product = Product.new(product_params)
    if @product.save
      redirect_to supplier_products_url
    else
      render :new
    end
  end

  def edit
    @product = product_find(params[:id])
  end


  def update
    @product = product_find(params[:id])
      @product.update(product_params)
      if @product.save  
        redirect_to supplier_products_url
      else
        render :edit
      end
    end


  def destroy
    product_find(params[:id]).destroy
    redirect_to supplier_products_url
  end

  private
  def product_params
    params.require(:product).permit(:name, :detail, :price ,:categorylist_id,:cover)
  end
end
