Rails.application.routes.draw do

  resources :posts
  resources :comments
  resources :replies

  root 'posts#index'

end

