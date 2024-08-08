Rails.application.routes.draw do
  get 'dashboard/index'
  root "dashboard#index"
  resources :inventory_items, only: [:update]
end
