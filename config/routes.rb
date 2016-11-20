Rails.application.routes.draw do
  get 'users/index'
  match '/users/:id', to: 'users#show', via: 'get'
  match '/users',   to: 'users#index',   via: 'get'
  match 'users/:id' => 'users#delete', :via => :delete, :as => :admin_destroy_user

  resources :pessoas
  resources :processos
  resources :users
  devise_for :users, :path_prefix => 'd'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
end
