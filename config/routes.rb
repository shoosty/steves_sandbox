Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#index'

  get 'about'   => 'static_pages#about'
  get 'contact' => 'static_pages#contact'
  get 'demos'   => 'static_pages#demos'
  get 'notes'   => 'static_pages#notes'

  get 'login'   => 'sessions#login'

  resource :sandbox
  resources :oldusers
  resources :accounts
  resources :mountains
  #rake routes to see the magic

end
