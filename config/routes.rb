# frozen_string_literal: true

Rails.application.routes.draw do
  get 'taxes/index'
  get 'taxes/view'
  get 'employee/index'
  get 'employee/view'
  get 'customer/index'
  get 'customer/view'
  get 'product/index'
  get 'product/show'
  get 'product/search_results'
  get 'winery/index'
  get 'winery/view'
  get 'variety/index'
  get 'variety/view'
  get 'region_made/index'
  get 'region_made/view'
  get 'province_made/index'
  get 'province_made/view'
  get 'contry_made/index'
  get 'contry_made/view'
  get 'about', to: 'product#about'

  resources :tax
  resources :employee
  resources :customer
  resources :product do
    collection do
      get 'search_results'
    end
  end
  resources :winery
  resources :variety
  resources :region_made
  resources :province_made
  resources :country_made
  resources :pages

  post 'product/add_to_cart/:id', to: 'product#add_to_cart', as: 'add_to_cart'
  delete 'product/remove_from_cart/:id', to: 'product#remove_from_cart', as: 'remove_from_cart'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'product#index'
end
