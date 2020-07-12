class ProjectsController < ApplicationController

# trying to think of ways to convert to JSON
  # @@project = Project.read("/path/to/project.json")
  # render :json => @@project

  # render :file => '/path/to/project.json',
  #   :content_type => 'application/json',
  #   :layout => false

  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def create
    project = Project.new project_params
    project.save
    redirect_to projects_path
  end

  def update
    project = Project.find params[:id]
    project.update project_params
    redirect_to projects_path
  end

  def edit
    @project = Project.find params[:id]
  end

  def show
    @project = Project.find params[:id]
  end


  def destroy
    project = Project.find params[:id]
    project.destroy
    redirect_to projects_path
  end

  private
  def project_params
    params.require(:project).permit(:name)
  end
end
