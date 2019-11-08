class TasksController < ApplicationController
  before_action :find_params, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def show
  end

  def edit
  end

  def update
    if @task.update(task_params)
      redirect_to root_path, notice: '編輯任務成功！'
    else
      render :edit  
    end
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to root_path, notice: '新增任務成功！'
    else 
      render :new
    end
  end

  def destroy
    @task.destroy
    redirect_to root_path, notice: '刪除任務成功！'
  end

  private 
  def task_params
    params.require(:task).permit(:title, :description, :priority, :start_time, :end_time, :tag_list)
  end

  def find_params
    @task = Task.find(params[:id])
  end
end
