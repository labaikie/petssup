Rails.application.routes.draw do

  root 'static_pages#home'

  get 'users/' => 'users#index', as: :users
  post 'users/' => 'users#create'
  get 'users/:id' => 'users#show', as: :user
  patch 'users/:id' => 'users#update'
  delete 'users/:id' => 'users#destroy'

  post 'sessions/new' => 'sessions#create', as: :create_session

  get 'sessions/destroy' => 'sessions#destroy', as: :destroy_session

  resources :posts, only: [:create, :edit, :destroy, :new]
  patch 'posts/:id' => 'posts#update'

  resources :posts do
    resources :comments, only: [:create, :destroy]
  end

  resources :sounds, only: [:create, :destroy]

  namespace :api do
    resources :posts, only: [:index, :show]
  end

end
