Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  get 'likes/index', to: 'likes#index'
  resources :pines
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'pines#index'
  root 'home#index'


      resources :likes do
        resources :pines
      end
    end
