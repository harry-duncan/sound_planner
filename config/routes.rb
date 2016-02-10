Rails.application.routes.draw do

  root :to => 'pages#home'

  resources :events
  resources :users

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
