Rails.application.routes.draw do
  root 'home#show'
  resources :movies
  resources :reviews
end
