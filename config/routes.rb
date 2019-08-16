Rails.application.routes.draw do
  resources :tasks, only: %i[index] do
    resource :finish_state, only: %i[create destroy], module: :tasks
  end
end
