Rails.application.routes.draw do
  resources :favorites
  resources :products
  resources :categories
  root 'products#index'
end
