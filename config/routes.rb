Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  get 'toppages/index'

  resources :users, only: [:index, :show]
  resources :articles

  root to: 'toppages#index'

end
