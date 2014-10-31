class TasksController < ApplicationController
  
  def update
  end

  def index
  end

  def show
  end

  def destroy
  end

   def index
    @tasks = Task.all
    render :partial => 'index'
  end
  
def create
    @task = Task.new(task_params)
    if @task.save
      render json: {:success =>  true, :task => @task}
    else
      render json: {:success => false}
    end
  end

  private
    def task_params
      params.require(:task).permit(:title, :description, :archived, :priority)
    end
end
