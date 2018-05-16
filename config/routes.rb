Rails.application.routes.draw do
  devise_for :customers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
  get '/allstores', to: "stores#all"
  get '/stores/:id/products/new', to: "products#new"
  resources :stores, only: [:index, :new, :create, :show]
  resources :products, only: [:show, :create]

end
