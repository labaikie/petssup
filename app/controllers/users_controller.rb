class UsersController < ApplicationController
  before_action :authorize

  def index
    @user = current_user
    @users = User.all
    @posts = Post.all.limit(6) # edit to popular posts later
    @comment = Comment.new
    data = HTTParty.get("http://content.guardianapis.com/search?q=pet&pets&animal&lifestyle&from-date=2015-12-01&api-key=8327ea7e-bc39-4935-a195-90e140c7c7e8")
    response = JSON.parse(data.body)
    @news = response['response']['results'][0..10]
  end

  def show
    @user = User.find(params[:id])
    @posts = @user.posts
    @sounds = @user.sounds
    @comment = Comment.new
  end

  def new
    @user = User.new
  end

  def create
    if User.new(user_params).save
      flash[:success] = "You are now registered!"
      redirect_to root_path
    else
      flash[:error] = "Registration was unsuccessful"
      redirect_to new_user_path
    end
  end

  def edit
    @user = User.find(params[:id])
    unless @user == current_user
      redirect_to :back
    end
  end

  def update
    @user = User.find(params[:id])
    @posts = @user.posts
    @sounds = @user.sounds
    if @user == current_user && @user.update_attributes(profile_params)
      redirect_to user_path(@user)
    else
      render :show
    end
  end

  def destroy
    @user = User.find(params[:id])
    if @user == current_user
      @user.destroy
      redirect_to destroy_session_path
    end
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
