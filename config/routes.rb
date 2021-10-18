Rails.application.routes.draw do
  resources :categories
  resources :locations
  resources :bookings
  resources :pages

  get 'about' => 'pages#about'

  devise_for :users
  
  root to: 'pages#index'

  
end
