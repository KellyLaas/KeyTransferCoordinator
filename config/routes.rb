Rails.application.routes.draw do
  get 'sessions/new'
  post 'auth/:provider/callback', to: 'sessions#create'

  resources :legs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'legs/index', to: 'legs#index', as: 'index'
  get 'legs/list', to: 'legs#list', as: 'list'
  post 'legs/index', to: 'legs#index'

  root 'legs#index'

end
