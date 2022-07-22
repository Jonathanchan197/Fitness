Rails.application.routes.draw do
  get 'routine/new'
  get 'routine/edit'
  get 'routine/index'
  get 'routine/show'
  get 'exercises/edit'
  root :to => 'pages#home'

  resources :users, :only => [:new, :create] 
  resources :exercises
  resources :routines

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end