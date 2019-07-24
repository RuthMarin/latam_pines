Rails.application.routes.draw do
  resources :pines
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'pines#index'
end
