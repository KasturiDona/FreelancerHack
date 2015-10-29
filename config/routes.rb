Rails.application.routes.draw do
  get 'session/new'

  root :to => 'projects#index'
  resources :jobs
  resources :projects
  resources :users
  
end
