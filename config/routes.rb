Rails.application.routes.draw do
  resources :users, only: [:index]

  authenticated :user do
    root 'dashboard#show', as: :authenticated_root
  end
  root 'home#index'
  
  devise_for :users, :controllers => { registrations: 'registrations' }
end
