Rails.application.routes.draw do
  get 'posts/new'
  get 'sessions/new'
  get 'users/new'
  get 'tops/index'
  root 'tops#index'
  get "/privacy", to: "tops#privacy"
  get "signup" => "users#new"
  
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users
  resources :topics
  resources :posts
end