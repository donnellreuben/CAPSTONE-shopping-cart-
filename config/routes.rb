Rails.application.routes.draw do
  root to: "products#index"

  resources :products
  resources :orders, except: [:destroy]
  resources :carted_products, only: [:index, :create, :destroy]
  resources :users, only: [:new, :create]

  get "/signup" => "users#new"
  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  delete "/logout" => "sessions#destroy"
end
