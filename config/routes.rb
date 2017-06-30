Rails.application.routes.draw do
  get 'sessions/new'
  match 'auth/provider/callback', to: 'sessions#create', via: [:post, :get]
  resources :legs, :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'legs/index', to: 'legs#index', as: 'index'
  get 'legs/list', to: 'legs#list', as: 'list'
  post 'legs/index', to: 'legs#index'
  get 'login', to: 'sessions#login', as: 'login'
  get 'logout', to: 'sessions#logout', as: 'logout'
  get 'auth/google_oauth2', as: 'google_login'

  root 'legs#index'
   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
