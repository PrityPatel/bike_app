Rails.application.routes.draw do


  root 'users#index'

  get '/logout', to: 'sessions#destroy'
  delete '/logout', to: 'sessions#destroy'

 get '/login', to: 'sessions#new'

 resources :sessions, only: [:new, :create, :destroy]

 resources :users

 resources :bicycles

 # before_action :check_logged_in, only: [:show, :update, :destroy, :edit]

end
