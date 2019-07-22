Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'
  resources :challenges, only: [:index, :show]
  resources :events, only: [:show, :new, :create, :edit, :update, :destroy]
  resources :events_levels, only: [:new]
  resources :groups, only: [:new, :create]
  resources :videos, only: [:index, :new, :create, :destroy]
end
