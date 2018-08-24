Rails.application.routes.draw do
  root 'shows#index'
  resources :shows
end
