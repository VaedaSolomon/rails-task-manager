Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  # list all tasks
  get 'tasks', to: 'tasks#index', as: :tasks

  # details of 1 task
  get 'tasks/new', to: 'tasks#new', as: :new
  get 'tasks/:id', to: 'tasks#show', as: :task

  # create new task (new has to be above id before or else prog will break)
  post 'tasks', to: 'tasks#create'

  # edit task
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit
  patch 'tasks/:id', to: 'tasks#update'

  # delete task
  delete 'tasks/:id', to: 'tasks#destroy', as: :delete

end
