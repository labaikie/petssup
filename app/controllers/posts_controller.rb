class PostsController < ApplicationController

  def new
    @post = Post.new
  end

  def create
    if Post.new(post_params).save
      flash[:success] = "You have posted!"
      redirect_to user_path
    else
      flash[:error] = "Posting was unsuccessful"
      redirect_to new_post_path
    end
  end

  private

  def post_params
    params.require(:post).permit(
      :body,
      :img_url,
      :video_url,
      :user_id
    )
  end

end
