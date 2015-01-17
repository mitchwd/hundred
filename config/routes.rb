Rails.application.routes.draw do
  get 'users/show', to: 'users#show'

  get 'sessions/create'

  resources :stories

  get 'pages/index'

  root 'pages#index'

  # Auth
  get '/auth/:provider/callback' => 'sessions#create'
  get '/signin' => 'sessions#new', :as => :signin
  get '/signout' => 'sessions#destroy', :as => :signout
  get '/auth/failure' => 'sessions#failure'
end
