Rails.application.routes.draw do
  resources :stories

  get 'pages/index'

  root 'pages#index'
end
