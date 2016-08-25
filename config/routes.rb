Rails.application.routes.draw do

  resources :users
  resources :rides
  resources :attractions

  get '/signin', to: 'sessions#new', as: 'signin'
  post '/sessions', to: 'sessions#create'
  delete '/logout', to: "sessions#destroy", as: 'logout'
  root 'sessions#index'



end
