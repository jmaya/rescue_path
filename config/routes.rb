Rails.application.routes.draw do

  get 'people/new'

  get 'people/create'

  get 'welcome/index'
  resources :cases
  resources :people
  resources :cases
  resources :clues

  devise_for :users , :controllers => { omniauth_callbacks: 'omniauth_callbacks' }
  get '/users/:id/add_email' => 'users#add_email', via: [:get, :patch, :post], :as => :add_user_email

  root 'welcome#index'
end
