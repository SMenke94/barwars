Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :deals, only: [:index, :show] do
    resources :user_deals, only: [:create, :update, :destroy]
  end
  resources :user_deals, only: [:destroy]
  get "dashboard", to: "dashboard#show", as: "dashboard"
  get 'loading', to: 'pages#loading'
  get 'weekly-deals', to: 'deals#weekly_deals'
end
