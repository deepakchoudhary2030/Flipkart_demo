class Supplier::CategoryController < ApplicationController
  include Supplier::CategoryHelper
  before_action :user_type, only: [:index,:show]


  def index
    @category = Categorylist.all
  end
  def show
    @subcategory  = Categorylist.find(params[:id]).subcategories
  end
end
