Rails.application.routes.draw do
  resources :catches, only: [:index, :show, :create]
  root 'catches#index'
end
