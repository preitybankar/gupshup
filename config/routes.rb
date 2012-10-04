Gupshup::Application.routes.draw do
  get "password_resets/new"

  resources :users do
    member do
      get :following, :followers
    end
  end
  
  resources :friendships 
  resources :sessions, only: [:new, :create, :destroy]
  resources :microposts, only: [:create, :destroy]
  resources :relationships, only: [:create, :destroy]
  resources :password_resets

  #get "static_pages/home"
  #match '/', to: 'static_pages#home'
  #root to: 'static_pages#home'
  root :to => 'static_pages#home'
  # get "static_pages/help"
  match '/help', to: 'static_pages#help'
  # get "static_pages/about"
  match '/about', to: 'static_pages#about'
  # get "static_pages/contact"
  match '/contact', to: 'static_pages#contact'
  match '/news', to: 'static_pages#news'
   
  # get "users/new"
  match '/signup', to: 'users#new'
  match '/signin',  to: 'sessions#new'
  match '/signout', to: 'sessions#destroy', via: :delete
  match '/delete_account', to: 'users#delete_account'
  
  
end
