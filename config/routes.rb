Rails.application.routes.draw do
  
  get 'toppages/index'

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  get 'users/index'

  get 'users/show'

  get 'users/new'

  get 'users/create'

  root to: 'toppages#index'
  
  get 'signup', to: 'users#new'
  
  #get 'tasks/:id', to: 'tasks#show'
  #post 'tasks', to: 'tasks#create'
  #put 'tasks/:id', to: 'tasks#update'
  #delete 'tasks/:id', to: 'tasks#destroy'
  
  #get 'tasks', to: 'tasks#index'
  
  #get 'tasks/new', to: 'tasks#new'
  
  #get 'tasks/:id/edit', to: 'tasks#edit'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  resources :users, only: [:index, :show, :new, :create]
  resources :tasks
end
