Rails.application.routes.draw do
  root 'home#index'

  resources :reviews, only: [:index, :show]
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :onion_rings

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
end
