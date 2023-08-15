Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  get 'tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'
  get 'tasks', to: 'tasks#index'
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit
  patch 'tasks/:id', to: 'tasks#update'
  get 'tasks/:id', to: 'tasks#show', as: :task
  delete "tasks/:id", to: 'tasks#destroy', as: :destroy
  # root "articles#index"
end
