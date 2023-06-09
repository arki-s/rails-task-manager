class TasksController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
    @completes = Complete.where(task_id: @task)
    today = Date.today
    @complete = @completes.find_by(date: today)
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.user = current_user
    if @task.save
      Complete.create!(task_id: @task.id, status: false, date: Date.today)
    date = 1
    30.times do
    Complete.create!(task_id: @task.id, status: false, date: (Date.today + date))
    date += 1
    end
      redirect_to task_path(@task)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to task_path(@task)
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path, status: :see_other
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed, :user)
  end

end
