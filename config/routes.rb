Rails.application.routes.draw do
  
  root to: "pages#index"
  
  get '/portfolio', to: 'pages#portfolio'
  get '/transactions', to: 'pages#transactions'
  get '/coin-list', to: 'pages#coin_list'

  devise_for :users

  resources :trades, only: [:new, :create]
end
