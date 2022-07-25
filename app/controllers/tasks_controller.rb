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
    redirect_to 'tasks#index'
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    if @task.update_attributes(task_params)
      redirect_to @task, :notice => 'Task was successfully updated.'
    else
      render :action => "edit"
    end
  end

  def task_parameter
    params.require(:task).permit(:title, :content, :start_time)
  end

      
end
