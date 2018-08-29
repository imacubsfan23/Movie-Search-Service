Rails.application.routes.draw do
  root 'api#index'
  resources :api, only: [:index]
  resources :shows, only: [:show]
  resources :movies, only: [:show]
end
