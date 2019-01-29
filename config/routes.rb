Rails.application.routes.draw do
  devise_for :users
  resources :favorites
  resources :products
  resources :categories
  root 'products#index'
end
