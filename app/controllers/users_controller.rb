class UsersController < ApplicationController
  before_filter :authenticate_user!, :except => [:show]

  def index
    @users = User.all
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  def delete
   User.find(params[:id]).destroy
   redirect_to :action => 'index'
  end
  
end
