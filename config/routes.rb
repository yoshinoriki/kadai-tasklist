Rails.application.routes.draw do
  get 'users/new'
  get 'users/create'
  root to: 'tasks#index'
  
  get 'signup', to: 'users#new'

  resources :users, only: [:create, :new,]
  resources :tasks
end
