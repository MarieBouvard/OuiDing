Rails.application.routes.draw do
  resources :categories 
  resources :bookings
  devise_for :users
  resources :locations
  root to: 'pages#index'

  
end
