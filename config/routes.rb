Rails.application.routes.draw do
  get 'sessions/new'
  get 'users/new'
  get 'tops/index'
  root 'tops#index'
  get "/privacy", to: "tops#privacy"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "signup" => "users#new"
  
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users
  resources :topics
end