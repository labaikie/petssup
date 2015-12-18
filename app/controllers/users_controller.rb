class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    if User.new(user_params).save
      flash[:success] = "You are now registered!"
      redirect_to users_path
    else
      flash[:error] = "Registration was unsuccessful"
      redirect_to new_user_path
    end
  end

  private
  def user_params
    params.require(:user).permit(
      :email,
      :password,
      :password_confirmation
    )
  end
end
