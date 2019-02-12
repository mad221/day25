Rails.application.routes.draw do
  resources :event, only: [:index, :new, :show]
  resources :user, only: [:show]
  devise_for :users
  root 'event#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
