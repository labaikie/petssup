Rails.application.routes.draw do

  root 'static_pages#home'

  get 'users/' => 'users#index', as: :users

  post '/' => 'users#create'

  get 'users/new' => 'users#new', as: :new_user

  get 'users/:id' => 'users#show', as: :user

  get 'sessions/new' => 'sessions#new', as: :new_session
  post 'sessions/new' => 'sessions#create', as: :create_session

  get 'sessions/destroy' => 'sessions#destroy', as: :destroy_session

  get 'targets/' => 'targets#index', as: :targets

  resources :posts

end
