Rails.application.routes.draw do
  namespace :admin do
    resources :user
    resources :attendances
    resources :event
    root to: "admin#index"
  end

  root 'event#index'
  devise_for :users
  resources :attendances, only: [:index, :new, :create]
  resources :user, only: [:show, :edit, :update, :destroy]
  resources :event do
  resources :attendances, only: [:new, :index, :show, :create, :destroy]
  end
  resources :charges
end
