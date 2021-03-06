Rails.application.routes.draw do
  root 'home#index'

  resources :users, only: [:new, :create, :update]
  resources :reviews, only: [:index, :new, :create, :edit, :update, :destroy]
  resources :restaurants, only: [:index, :show]
  resources :sessions, only: [:new, :create, :destroy]

  resources :restaurants do
    resources :onion_rings, only: :show
  end

  resources :restaurants do
    resources :onion_rings do
      resources :reviews, only: [:new, :create, :edit, :update]
    end
  end

  resources :onion_rings do
    resources :reviews
  end

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  get 'profile', to: 'users#profile', as: 'user_profile'
  get 'profile/my-reviews', to: 'users#reviews', as: 'user_reviews'


end
