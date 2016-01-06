class CommentsController < ApplicationController
  before_action :current_user, only: [:create, :destroy, :new]

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)
    @comment.user_id = current_user.id
    if @comment.save
      redirect_to :back
    else
      flash.now[:danger] = "error"
    end
  end

  def destroy
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to :back
  end

  private

  def comment_params
    params.require(:comment).permit(
      :body,
      :sound_id
    )
  end

end
