class UsersController < ApplicationController


  def index
    @users = User.all
  end

  def new
  end

  def create
    @user = User.new(params.require(:user).permit(:name, :password))
    @user.save
    redirect_to @user
  end


  def show
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:name, :password)
  end

end
