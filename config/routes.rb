Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/crash', to: 'pages#crash'
  resources :countries, only: [:index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
