class PostsController < ApplicationController
  before_action :current_user, only: [:create, :destroy, :update, :new, :edit]
  before_action :authorize

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      flash[:success] = "You have posted!"
      redirect_to user_path(@post.user)
    else
      flash[:error] = "Posting was unsuccessful"
      redirect_to new_post_path
    end
  end

  def destroy
    @post = Post.find(params[:id])
    if @post.user == current_user
      @post.destroy
      redirect_to :back
    end
  end

  def edit
    @post = Post.find(params[:id])
    unless @post.user == current_user
      redirect_to :back
    end
  end

  def update
    @post = Post.find(params[:id])
    if @post.user == current_user && @post.update_attributes(post_params)
      redirect_to user_path(@post.user)
    else
      render :edit
    end
  end

  private

  def post_params
    params.require(:post).permit(
      :body,
      :img_url,
      :video_url
    )
  end

end
