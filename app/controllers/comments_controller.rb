class CommentsController < ApplicationController
  before_action :current_user

  def create
    if params[:comment][:body] == "" && params[:comment][:sound_id] == "add voice"
      flash.now[:danger] = "error"
      redirect_to :back
    else

      @post = Post.find(params[:post_id])
      # @comment = Comment.new(comment_params)
      @comment = @post.comments.create(comment_params)
      @comment.user_id = current_user.id
      if @comment.save
        redirect_to :back
      else
        flash.now[:danger] = "error"
        redirect_to :back
      end
    end
  end

  def destroy
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    if @comment.user == current_user
      @comment.destroy
      redirect_to :back
    end
  end

  private

  def comment_params
    params.require(:comment).permit(
      :body,
      :sound_id
    )
  end

end
