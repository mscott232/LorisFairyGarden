Rails.application.routes.draw do

  devise_for :customers
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  get 'products' => 'products#index', as: 'products'
  get 'products/:id' => 'products#show', as: 'product', id: /\d+/
  get 'cart' => 'cart#show', as: 'cart'
  resources :line_items, only: [:create, :update, :destroy]
  get 'checkout' => 'checkout#new', as: 'new_checkout'
  post 'checkout' => 'checkout#create', as: 'checkout'
  root to: 'products#index'
end
