Rails.application.routes.draw do
  devise_for :users

  resources :reservations, only: [:new, :create]

  get 'lamaisonthai', to: 'pages#lamaisonthai', as: :lamaisonthai

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
