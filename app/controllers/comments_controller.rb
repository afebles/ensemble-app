class CommentsController < ApplicationController
skip_before_action :authenticate_user!

  def index
    @comments = Comment.all
  end

  def show
    @project = Project.find(params[:project_id])
    @user = @comment.user
  end

  def new
    @project = Project.find(params[:project_id])
    @comment = Comment.new
  end

  def create
    @project = Project.find(params[:project_id])
    @comment = Comment.new(comment_params)
    @comment.user = current_user
    @comment.project = @project
    if @comment.save
      redirect_to project_path(@project)
    else
      flash[:alert] = "Your comment was not added"
      redirect_to project_path(@project)
    end
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    if @comment.user != current_user
      flash[:alert] = "You can not edit this comment"
      redirect_to project_path(@project)
    else
      if @comment.update(comment_params)
        flash[:alert] = "Your comment has been successfully updated"
        redirect_to project_path(@project)
      else
        flash[:alert] = "Your comment was not update"
        redirect_to project_path(@project)
      end
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    if @comment.user != current_user
      flash[:alert] = "You can not delete this comment"
      redirect_to project_path(@project)
    else
      if @comment.destroy
        flash[:alert] = "Your comment has been deleted"
        redirect_to project_path(@project)
      else
        flash[:alert] = "Your comment couldn't be deleted"
        redirect_to project_path(@project)
      end
    end
  end




  private

  def comment_params
    params.require(:comment).permit(:content)
  end

end




