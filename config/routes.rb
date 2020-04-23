Rails.application.routes.draw do

  get 'watchings/new'
  get 'meetings/new'
  get 'sessions/new'
  get 'users/new'
  root 'tops#index'
  get "/privacy", to: "tops#privacy"
  get "signup" => "users#new"
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
  post "/favorites", to: "favorites#create"
  delete "/favorites", to: "favorites#destroy"
  
  resources :users
  resources :teams
  resources :posts
  resources :comments
  resources :meetings
  resources :watchings
end