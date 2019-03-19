Rails.application.routes.draw do
  
  root to: 'tasks#index'

  
  #get 'tasks/:id', to: 'tasks#show'
  #post 'tasks', to: 'tasks#create'
  #put 'tasks/:id', to: 'tasks#update'
  #delete 'tasks/:id', to: 'tasks#destroy'
  
  #get 'tasks', to: 'tasks#index'
  
  #get 'tasks/new', to: 'tasks#new'
  
  #get 'tasks/:id/edit', to: 'tasks#edit'

  resources :tasks
end
