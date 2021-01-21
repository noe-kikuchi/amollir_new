Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  devise_scope :user do
    get 'addresses', to: 'users/registrations#new_address'
    post 'addresses', to: 'users/registrations#create_address'
  end
  root to: "karutes#index"
  resources :users, only: [:show] do
    resources :karutes, shallow: true
  end

  resources :menus, only: [:index]
  resources :bulogs, only: [:index]
  resources :accesses, only: [:index]
end
