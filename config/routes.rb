Rails.application.routes.draw do
  root 'home#index'

  resources :reviews, only: [:index, :show, :new, :create, :edit, :update]
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :onion_rings
  resources :restaurants

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  get 'write-review/onion-ring/:id', to: 'reviews#new', as: 'write_onion_review'
end
