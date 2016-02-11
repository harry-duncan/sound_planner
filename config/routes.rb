Rails.application.routes.draw do

  root :to => 'pages#home'

  resources :events
  resources :users

  get '/users/:id/calendar' => 'users#calendar', :as => "calendar"

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  get '/search' => 'events#search'
end
