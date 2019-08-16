class Tasks::ApplicationController < ApplicationController
  before_action :set_nested_task

  private

  def set_nested_task
    @task = Task.find(params[:task_id])
  end
end
