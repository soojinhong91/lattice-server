Rails.application.routes.draw do

<<<<<<< HEAD
  resources :users
  resources :tasks
  resources :cards
  resources :projects
=======
  root :to => 'pages#home'
  resources :users
  resources :projects
  resources :cards
  resources :tasks
>>>>>>> fafc353ea76dc6ed13427bd09d90ca57e68ec51c

end
