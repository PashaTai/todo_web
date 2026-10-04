class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end
  def new
  end
  def create
    @task = Task.new(title: params[:title])
    if @task.save
      redirect_to "/tasks"
    else
      render :new, status: :unprocessable_entity
    end
  end
  def complete
    task = Task.find(params[:id])
    task.update(done: true)
    redirect_to "/tasks"
  end
  def destroy
    task = Task.find(params[:id])
    task.destroy
    redirect_to "/tasks"
  end
end
