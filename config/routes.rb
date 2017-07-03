Rails.application.routes.draw do
  get 'sessions/new'
  match 'auth/:provider/callback', to: 'sessions#create', via: [:post, :get]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'legs/index', to: 'legs#index', as: 'legs_index'
  get 'legs/new', to: 'legs#new', as: 'legs_new'
  get 'trips/index', to: 'trips#index', as: 'trips_index'
  get 'trips/new', to: 'trips#new', as: 'trips_new'
  get 'users/index', to: 'users#index', as: 'users_index'
  get 'users/new', to: 'users#new', as: 'users_new'
  get 'login', to: 'sessions#login', as: 'login'
  get 'logout', to: 'sessions#logout', as: 'logout'
  get 'auth/google_oauth2', as: 'google_login'
  

  root 'legs#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
