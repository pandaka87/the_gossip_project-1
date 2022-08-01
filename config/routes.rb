Rails.application.routes.draw do
  get '/contact', to: 'contact#contacts'
  get '/team', to: 'team#teams'
  get '/welcome/:first_name', to: 'welcome#welcomes'
  get '/welcome', to: 'welcome#welcomes'
  get '/gossip/:id', to: 'gossip#show'
  get '/author/:id', to: 'author#authors'
end
