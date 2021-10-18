Rails.application.routes.draw do
  resources :categories
  resources :locations
  resources :bookings
  devise_for :users
  
  root to: 'pages#index'

  
end
