Rails.application.routes.draw do
  get 'taxes/index'
  get 'taxes/view'
  get 'employee/index'
  get 'employee/view'
  get 'customer/index'
  get 'customer/view'
  get 'product/index'
  get 'product/view'
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
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'product#index'
end
