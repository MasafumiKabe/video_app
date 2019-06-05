Rails.application.routes.draw do

  devise_for :users
  get 'toppages/index'

  resources :users, only: [:index, :show]

  root to: 'toppages#index'
end
