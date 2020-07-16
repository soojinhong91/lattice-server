class TasksController < ApplicationController
  def index
    @tasks = Task.all
    if @tasks
      render json: {
        tasks: @tasks
      }
    else
      render json: {
        status: 500,
        errors: ['no tasks found']
      }
    end
  end

  def new
    @task = Task.new
  end

  def create
    task = Task.create task_params
    render json: {
      task: task
    }
  end

  def edit
    @task = Task.find params[:id]
  end

  def update
    task = Task.find params[:id]
    task.update task_params
    redirect_to task
  end

  def show
    @task = Task.find params[:id]
    if @task
       render json: {
         task: @task
       }
     else
       render json: {
         status: 500,
         errors: ['task not found']
       }
     end
  end

  def destroy
    task = Task.find params[:id]
    task.destroy
  end

  private
  def task_params
    params.require(:task).permit(:description, :card_id)
  end
end
