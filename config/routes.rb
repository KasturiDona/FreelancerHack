Rails.application.routes.draw do
  root :to => 'projects#index'
  resources :jobs
  resources :projects
  resources :users
  
end
