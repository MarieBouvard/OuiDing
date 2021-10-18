Rails.application.routes.draw do
  resources :categories
  resources :locations
  resources :searches
  resources :bookings
  devise_for :users
  
  root to: 'pages#index'

  
end
