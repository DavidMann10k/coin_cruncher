Rails.application.routes.draw do
  
  root to: "pages#index"
  
  get '/portfolio', to: 'pages#portfolio'

  devise_for :users

  resources :trades, path: :transactions, only: [:new, :create, :index]
  resources :coins, only: :index
end
