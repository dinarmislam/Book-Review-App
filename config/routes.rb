Rails.application.routes.draw do
  namespace :admin do
    resources :users
	resources :books
	resources :categories

    root to: "books#index"
  end

  devise_for :users  
  resources :books
  root 'books#index'
  get '/mybooks', to: 'books#mybooks'
end
