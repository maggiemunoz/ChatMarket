Rails.application.routes.draw do
  resources :swap_offers
  root to: "trade_requests#index"

  resources :trade_requests
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
