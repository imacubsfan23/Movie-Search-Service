Rails.application.routes.draw do
  root 'api#index'
  resources :api, only: [:index] do
    resources :shows, only: [:index, :show]
    resources :discover, only: [:index, :show]
  end
end
