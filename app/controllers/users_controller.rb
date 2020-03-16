class UsersController < ApplicationController
  def index
    @users = User.all

  end

  def create
    @user = User.create(user_params)

  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)

  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy

  end

  private

  def user_parameters
    params.require(:user).permit(:name, :email, :title, :phone, :status)
  end
  
end