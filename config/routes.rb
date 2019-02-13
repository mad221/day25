Rails.application.routes.draw do
  root 'event#index'
  resources :event, only: [:index, :new, :show, :create]
  resources :user, only: [:show, :edit, :update]
  devise_for :users


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
