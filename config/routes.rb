Rails.application.routes.draw do

get 'residences/global'
resources :residences  do
  resources :comments 
end
  root 'residences#index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
