Rails.application.routes.draw do
  # mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  devise_scope :user do
    get 'addresses', to: 'users/registrations#new_address'
    post 'addresses', to: 'users/registrations#create_address'
  end

    # get 'patient_address', to: 'patients#new_patient_address'
    # get 'patient_address', to: 'patients#create_patient_address'

  root to: "karutes#index"
  # resources :restaurants
  #   namespace :admin do
  resources :restaurants, only: [:show] 

  resources :patients, only: [:new, :create, :show, :edit, :update, :destroy] do
    resources :patient_addresses, shallow: true
    resources :karutes, shallow: true
    collection do
      get 'search'
    end
  end

  resources :menus, only: [:index]
  resources :bulogs, only: [:index]
  resources :accesses, only: [:index]
end
