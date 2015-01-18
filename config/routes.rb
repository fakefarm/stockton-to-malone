Rails.application.routes.draw do
  resources :colors
  resources :links
  root 'links#index'
end
