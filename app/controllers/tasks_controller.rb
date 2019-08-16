class TasksController < ApplicationController
  def index
    @tasks = Task.default_order
  end
end
