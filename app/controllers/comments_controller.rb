class CommentsController < ApplicationController
  before_action :current_user, only: [:create, :destroy, :new]

def create
  @post = Post.find(params[:post_id])
  @comment = @post.comments.create(comment_params)
  @comment.user_id = current_user.id
  if @comment.save
    redirect_to @post
  else
    flash.now[:danger] = "error"
  end
end

def destroy
  @post = Post.find(params[:post_id])
  @comment.destroy
  redirect_to user_path(@post.user)
end

end
