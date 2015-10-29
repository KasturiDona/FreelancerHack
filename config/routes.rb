Rails.application.routes.draw do

  root :to => 'projects#index'
  resources :jobs
  resources :projects
  resources :users

  get '/session' => 'session#show'
  get '/login' => 'session#new'
  get '/session' => 'session#show'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
  
end
