class CommentsController < ApplicationController
  before_action :current_user, only: [:create, :destroy, :new]

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)
    @comment.user_id = current_user.id
    if @comment.save
      redirect_to @post.user
    else
      flash.now[:danger] = "error"
    end
  end

  def update
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    @comment.update_attributes(comment_params)
  end

  def destroy
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to user_path(@post.user)
  end

  private

  def comment_params
    params.require(:comment).permit(
      :body,
      :sound_id
    )
  end

end
