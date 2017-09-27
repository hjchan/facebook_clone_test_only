Rails.application.routes.draw do

  root 'welcome#index'
  resources :welcome, only: [:index]
  resources :users
  resources :statuses
  resources :sessions, only: [:new, :create]

  delete '/sessions' => 'sessions#destroy', as: "signout"

end
