Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cart, only: [:show]
  resources :line_items, only: [:create, :update, :destroy]
  get 'products' => 'products#index', as: 'products'
  get 'products/:id' => 'products#show', as: 'product', id: /\d+/
  root to: 'products#index'
end
