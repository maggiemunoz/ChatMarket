Rails.application.routes.draw do
  resources :swap_offers
  root to: "trade_requests#index"

  resources :trade_requests

  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations', users: 'users', omniauth_callbacks: 'omniauth_callbacks'},
                    path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'users/profile/:id', to: 'users#profile', as: 'profile'
  get 'users/delete/:id', to: 'users#delete', as: 'delete_user'

  resources :swap_offers do
    member do
      patch :change_status
    end
  end
end
