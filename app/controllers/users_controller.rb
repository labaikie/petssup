class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @posts = @user.posts
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

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @posts = @user.posts
    if @user.update_attributes(profile_params)
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(
      :email,
      :name,
      :password,
      :password_confirmation,
    )
  end

  def profile_params
    params.require(:user).permit(
        :name,
        :email,
        :password,
        :family_name,
        :animal_type,
        :gender,
        :birthday,
        :human_name,
        :address,
        :profile_img,
        :hobby,
        :fav_food
    )
  end

end
