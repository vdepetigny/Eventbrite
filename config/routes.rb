Rails.application.routes.draw do
  devise_for :users 
  resources :users
  resources :events
  resources :attendances
  root 'events#index'
end
