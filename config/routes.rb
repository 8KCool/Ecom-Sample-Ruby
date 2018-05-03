Rails.application.routes.draw do
  devise_for :customers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "products#index"
  get '/stores/:id/products/new', to: "products#new"
  resources :stores, only: [:new, :create, :show]
  resources :products, only: [:show, :create]

end
