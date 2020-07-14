class ProjectsController < ApplicationController

  def index
    @projects = Project.all
    if @projects
      render json: @projects.map { |p| { project: p, cards: p.cards } }
    else
      render json: {
        status: 500,
        errors: ['no projects found']
      }
    end
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
    if @project
       render json: {
         project: @project
       }
     else
       render json: {
         status: 500,
         errors: ['project not found']
       }
     end
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
