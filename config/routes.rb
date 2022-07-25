Rails.application.routes.draw do
  root :to => 'pages#home'

  resources :users, :only => [:new, :create] 
  resources :exercises
  resources :routines
  resources :workouts
  resources :public, :only => [:index, :show]
  resources :muscles

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end