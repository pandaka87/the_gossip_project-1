Rails.application.routes.draw do
  root to: "welcome#index"
  resources :welcome, only: [:show,:index]
  resources :team, only: [:index]
  resources :contact, only: [:index]
  resources :gossips
  resources :users
  resources :cities
  resources :sessions, only: [:new,:create,:destroy]
  resources :comments
end
