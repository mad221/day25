Rails.application.routes.draw do
  namespace :admin do
    resources :users
    resources :attendances
    resources :events
    root to: "admin#index"
  end

  root 'event#index'
  devise_for :users
  resources :attendances, only: [:index, :new, :create]
  resources :user, only: [:show, :edit, :update]
  resources :event do
    resources :attendances, only: [:new, :index, :show, :create, :destroy]
  end
  resources :charges
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
