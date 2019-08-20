class CommentsController < ApplicationController
  def index
    comment = Comment.all
    render :json => comment
  end

  def show
    comment = Comment.find params[:id]
    comment.user_id = current_user.id
    render :json => comment
  end

  def new
  end

  def create
    comment = Comment.new comment_params
    if comment.save
      render :json => comment
    end
  end

  def edit
  end

  def update

    comment = Comment.find params[:id]
    comment.update comment_params
    comment.save
    if comment.save
      render :json => comment
    end
  end

  def destroy
    comment = Comment.find params[:id]
    if current_user.admin?
      comment.destroy
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:user_id, :plant_id, :comment, :rating)
  end
end
