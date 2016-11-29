class UsersController < ApplicationController
  before_filter :authenticate_user!, :except => [:show]

  def index
    @users = User.all
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find params[:id]
    params[:user].delete(:password) if params[:user][:password].blank?
    if @user.update_attributes(user_params)
       redirect_to users_path
    end  
  end
  
  def delete
   User.find(params[:id]).destroy
   redirect_to :action => 'index'
  end
  
  private 
  
  def user_params
    params.require(:user).permit!
  end
  
end
