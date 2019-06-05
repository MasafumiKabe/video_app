Rails.application.routes.draw do

  resources :users, only: [:index, :show]

  devise_for :users
  get 'toppages/index'

  root to: 'toppages#index'
end
