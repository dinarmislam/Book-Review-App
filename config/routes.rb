Rails.application.routes.draw do
  devise_for :users  
  resources :books
  root 'books#index'
  get '/mybooks', to: 'books#mybooks'
end
