class CompletesController < ApplicationController
  def index
    @completes = Complete.all
  end

  def new
    @complete = Complete.new
  end

  def create
    @task = Task.find(params[:task_id])
    @complete = Complete.new(complete_params)
    @complete.task = @task
    @complete.save
  end

  def edit
    @complete = Complete.find(params[:id])
  end

  def update
    @complete = Complete.find(params[:id])
    @complete.update(complete_params)
  end

private

  def complete_params
    params.require(:complete).permit(:status, :date)
  end

end
