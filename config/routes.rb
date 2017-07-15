Rails.application.routes.draw do

  resources :users, only: [:index]

  get '/support/:id', to: 'support#new', as: :support

  resources :checkouts, only: [:new, :create]
  authenticated :user do
    root 'dashboard#show', as: :authenticated_root
  end
  root 'home#index'

  devise_for :users, :controllers => { registrations: 'registrations' }
end
