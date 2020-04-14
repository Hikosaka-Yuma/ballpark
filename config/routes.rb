Rails.application.routes.draw do
  
  get 'comments/new'
  get 'posts/new'
  get 'sessions/new'
  get 'users/new'
  root 'tops#index'
  get "/privacy", to: "tops#privacy"
  get "signup" => "users#new"
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
  resources :users
  resources :teams
  resources :posts
  resources :comments
end