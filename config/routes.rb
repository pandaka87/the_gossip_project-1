Rails.application.routes.draw do
  resources :welcome, only: [:show,:index]
  resources :team, only: [:index]
  resources :contact, only: [:index]
  resources :gossips
  resources :users
  resources :cities
  resources :sessions, only: [:new,:create,:destroy]
end
