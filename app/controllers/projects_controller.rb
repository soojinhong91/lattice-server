class ProjectsController < ApplicationController

  def index
    @projects = current_user.projects
    if @projects
      render json: @projects.map { |p| { project: p, cards: p.cards , tasks: p.cards.map { |t| t.tasks}} }
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
    project = Project.create project_params
    current_user.projects << project
    render json: current_user.projects.map { |p| { project: p, cards: p.cards , tasks: p.cards.map { |t| t.tasks}} }
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
    params.require(:project).permit(:name, :description)
  end
end
