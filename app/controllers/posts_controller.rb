class PostsController < ApplicationController
  before_action :current_user, only: [:create, :destroy, :update, :new]

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
    @post.destroy
    redirect_to user_path(@post.user)
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update_attributes(post_params)
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
