Rails.application.routes.draw do

  root :to => 'pages#home'

  # get 'sessions/create'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/logged_in', to: 'sessions#is_logged_in?'

  resources :users, only: [:create, :show, :index]
  resources :projects
  resources :cards
  resources :tasks

end
