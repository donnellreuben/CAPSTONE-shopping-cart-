Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  get 'users/new'
  get 'users/create'
  get 'users/edit'
  get 'users/update'
  get 'users/destroy'
  get 'carted_products/index'
  get 'carted_products/show'
  get 'carted_products/new'
  get 'carted_products/create'
  get 'carted_products/edit'
  get 'carted_products/update'
  get 'carted_products/destroy'
  get 'orders/index'
  get 'orders/show'
  get 'orders/new'
  get 'orders/create'
  get 'orders/edit'
  get 'orders/update'
  get 'orders/destroy'
  get 'products/index'
  get 'products/show'
  get 'products/new'
  get 'products/create'
  get 'products/edit'
  get 'products/update'
  get 'products/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
