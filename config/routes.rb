Rails.application.routes.draw do
  resources :categories
  resources :locations
  resources :bookings

  get  "/locationbyuser/:id" => 'locations#locationbyuser', as: :locationbyuser

  devise_for :users
  
  root to: 'pages#index'

  
end
