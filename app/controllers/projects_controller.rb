class ProjectsController < ApplicationController

  def index
    if logged_in?
      @projects = current_user.projects
    else
      @projects = []
    end
    if @projects.any?
      render json: current_user.projects.map { |p| {name: p.name, id: p.id, cards: p.cards.map {|c| {name: c.name, id: c.id, tasks: c.tasks }}}}
    else
      render json: @projects
    end
  end
  # I think the status 500 error I'm getting is due to no login. I think it's a good error.

  def new
    @project = Project.new
  end

  def create
    project = Project.create project_params
    current_user.projects << project
    render json: current_user.projects.map { |p| {name: p.name, id: p.id, cards: p.cards.map {|c| {name: c.name, id: c.id, tasks: c.tasks }}}}
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
  end

  private
  def project_params
    params.require(:project).permit(:name, :description)
  end
end
