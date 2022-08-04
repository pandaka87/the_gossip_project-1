Rails.application.routes.draw do
  get 'cities/index'
  get 'cities/show'
  get 'cities/new'
  get 'cities/create'
  get 'cities/update'
  get '/contact', to: 'contact#contacts'
  get '/team', to: 'team#teams'
  get '/welcome/:first_name', to: 'welcome#welcomes'
  get '/welcome', to: 'welcome#welcomes'
  get '/author/:id', to: 'author#authors'
  resources :gossips
  resources :users
  resources :cities
  resources :sessions, only: [:new,:create,:destroy]
end
