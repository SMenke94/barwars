Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :deals, only: [:index, :show]
  resources :dashboard, only: [:show]
  get 'loading', to: 'pages#loading'
  get 'weekly-deals', to: 'pages#weekly_deals'
end
