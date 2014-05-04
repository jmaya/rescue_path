Rails.application.routes.draw do


  get 'people/new'

  get 'people/create'

  resources :people
  resources :cases
  resources :clues
  resources :user_notifications

  devise_for :users , :controllers => { omniauth_callbacks: 'omniauth_callbacks' }
  get '/users/:id/add_email' => 'users#add_email', via: [:get, :patch, :post], :as => :add_user_email

  root 'cases#index'
end
