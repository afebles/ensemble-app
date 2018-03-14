class ProjectsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:query].present?
      sql_query = "title ILIKE :query OR location ILIKE :query"
      @projects = Project.where(sql_query, query: "%#{params[:query]}%")
    else
      @projects = Project.all
    end

    # @projects = Project.where.not(latitude: nil, longitude: nil)

    # @markers = @projects.map do |project|
    #   {
    #     lat: project.latitude,
    #     lng: project.longitude,
    #     infoWindow: { content: render_to_string(partial: "/projects/map_box", locals: { project: project }) }
    #   }
    # end
  end

  def show
    @project = Project.find(params[:id])
    @participants = @project.participants
    @comments = @project.comments
    @comment = Comment.new

  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    @project.user = current_user
    if @project.save
      redirect_to project_path(@project)
    else
      render :new
    end
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    if @project.user != current_user
      flash[:alert] = "You can not edit this project"
      redirect_to @project
    else
      if @project.update(project_params)
        flash[:alert] = "Your project has been successfully updated"
        redirect_to @project
      else
        render :edit
        render json: @project.errors
      end
    end
  end

  def destroy
    @project = Project.find(params[:id])
    if @project.user != current_user
      flash[:alert] = "You can not delete this project"
      redirect_to @project
    else
      if @project.destroy
        flash[:alert] = "Your project has been deleted"
        redirect_to projects_path
      else
        render :show
        render json: @project.errors
      end
    end
  end




  private

  def project_params
    params.require(:project).permit(:title, :description, :location, :start_time, :end_time, :picture)
  end

end




