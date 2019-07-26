Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  resources :pines
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'pines#index'
  root 'home#index'
end
