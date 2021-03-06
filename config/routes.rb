Rails.application.routes.draw do
  resources :orders
  resources :users
  resources :products
  resources :categories
  resources :registrations, only: [:create]
  resources :sessions, only: [:create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
