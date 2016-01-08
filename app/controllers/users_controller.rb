class UsersController < ApplicationController
  before_action :authorize

  def index
    @user = current_user
    @users = User.all
    @posts = Post.all.reverse_order.limit(4)
    @comment = Comment.new
    @news = get_api_news(20)
    @latest_blurb = get_latest_blurb
    if params[:query]
      search_by = params[:search].to_sym
      user_list = User.all
      @users = []
      user_list.each do |user|
      if user[search_by].downcase.include? params[:query].downcase
        @users << user
      end
    end
    return @users
    end
  end

  def get_api_news(count)
    data = HTTParty.get("http://content.guardianapis.com/search?q=pet&pets&animal&lifestyle&from-date=2015-12-01&api-key=8327ea7e-bc39-4935-a195-90e140c7c7e8")
    response = JSON.parse(data.body)
    return response['response']['results'][0..count]
  end

  def get_latest_blurb
    user_posts = current_user.posts.reverse_order
    user_posts.each do |post|
      if post.body != ""
        return post.body
      end
    end
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
