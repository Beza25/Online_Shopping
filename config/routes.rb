Rails.application.routes.draw do
  resources :products
  resources :orders
  resources :customers
  get "/about", to: 'application#about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
