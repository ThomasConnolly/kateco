class UsersController < ApplicationController
  def new
    @user = User.new
end

  def create
    @user = User.new(user_params)
    @user.save
  end

  def login
    @user = User.find_by_name(params[:name])
      if @user.password == params[:password]
        give_token
      else
        redirect_to admin_index_path
      end
    end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end

