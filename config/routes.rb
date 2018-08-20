Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :deals, only: [:index, :show]
  get "dashboard", to: "dashboard#show", as: "dashboard"
  get 'loading', to: 'pages#loading'
  get 'weekly-deals', to: 'pages#weekly_deals'
end
