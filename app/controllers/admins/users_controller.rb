class Admins::UsersController < ApplicationController
  include Admin::CategoryHelper
  before_action :user_type, only: [:destroy]
  
  def destroy
    User.find(params[:id]).destroy
    redirect_to admins_categorylists_url
  end

end
