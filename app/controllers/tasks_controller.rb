class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def show 
    @task = Task.find(params[:id])
  end

  def create
    Task.create(task_parameter)
    redirect_to tasks_path
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end




  private


  def task_parameter
    params.require(:task).permit(:title, :content, :start_time)
  end

      
end
