Rails.application.routes.draw do

  devise_for :users

  resources :books, only: [:index, :show, :edit, :update, :create, :destroy]
  resources :users, only: [:index, :show, :edit, :update]
  resources :homes


  get 'home/about' => 'homes#about'
  root 'homes#top'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
