Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :deals, only: [:index, :show]
  get 'loading', to: 'pages#loading'
end
