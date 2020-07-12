Rails.application.routes.draw do

  resources :users
  resources :tasks
  resources :cards
  resources :projects

end
