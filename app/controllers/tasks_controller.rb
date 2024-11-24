class TasksController < ApplicationController
  before_action:set_week
  before_action:set_task,only:[:show,:edit,:update,:destroy]
  def index
    @tasks=@week.tasks
  end

  def show

  end

  def new
    @task=@week.tasks.build
  end

  def create
    @task=@week.tasks.build(task_params)
        if @task.save
              redirect_to [@week,@task],notice:'Task was successfully created'
                else
                      render:new
                        end
  end

  def update
      if @task.update(task_params)
            redirect_to [@week,@task] ,notice:'Task was successfully updated.'
              else
                   render:edit
                     end
  end
  def destroy
      @task.destroy
        redirect_to week_tasks_path(@week),notice:'Task was successfully deleted.'
  end

  private

  def set_week
      @week=Week.find(params[:week_id])
  end

  def set_task
   @task=@week.tasks.find(params[:id])
  end

  def task_params
      params.require(:task).permit(:title,:description,:date)
  end
end
