class Tasks::FinishStatesController < Tasks::ApplicationController
  protect_from_forgery with: :null_session

  def create
    @task.finish!
  end

  def destroy
    @task.unfinish!
  end
end
