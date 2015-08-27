class UsersController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    
  end
end

private

def user_params
  params.require(:user).permit(:name, :email, :password, :confirm_password)
