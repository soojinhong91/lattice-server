Rails.application.routes.draw do
  get 'tasks/index'
  get 'tasks/new'
  get 'tasks/edit'
  get 'tasks/show'
  get 'cards/index'
  get 'cards/new'
  get 'cards/edit'
  get 'cards/show'
  get 'projects/index'
  get 'projects/new'
  get 'projects/edit'
  get 'projects/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
