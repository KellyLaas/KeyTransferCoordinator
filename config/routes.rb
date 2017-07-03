Rails.application.routes.draw do
  get 'sessions/new'
  match 'auth/:provider/callback', to: 'sessions#create', via: [:post, :get]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'auth/google_oauth2', as: 'google_login'

  resources :trips, :legs, :users 
  root 'legs#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
