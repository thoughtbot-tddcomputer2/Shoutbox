class CommentsController < ApplicationController

  def new
    @shout   = Shout.find(params[:shout_id])
    @comment = Comment.new
  end
  
  def create
    @shout   = Shout.find(params[:shout_id])
    @comment = @shout.comments.new(params[:comment])
    if @comment.save
      flash[:notice] = "Comment has been created."
      redirect_to shouts_path
    else
      render :new
    end
  end
end
